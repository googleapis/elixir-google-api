defmodule Storage.BucketsTest do
  use ExUnit.Case
  doctest Storage.Buckets

  setup do
    {:ok, token} = Goth.Token.for_scope("https://www.googleapis.com/auth/cloud-platform")
    conn = GoogleApi.Storage.V1.Connection.new(token.token)
    project_id = Config.get(:storage, :project_id, "elixir-g-api-samples")

    # cleanup after test runs
    on_exit(fn ->
      case Storage.Buckets.list(conn, project_id) do
        {:ok, %GoogleApi.Storage.V1.Model.Buckets{items: buckets}} ->
          {:ok, reg} = Regex.compile("#{project_id}-test-")
          buckets
          |> Enum.map(fn(%GoogleApi.Storage.V1.Model.Bucket{id: id}) -> id end)
          |> Enum.filter(fn(id) -> Regex.match?(reg, id) end)
          |> Enum.each(fn(id) ->
            Process.sleep(200) # rate limits on deleting buckets
            Storage.Buckets.delete(conn, id)
          end)
        _ -> nil
      end
    end)

    # return context for tests
    {:ok,
      project_id: project_id,
      token: token,
      conn: conn,
      uid: :rand.uniform(89_999) + 10_000,
    }
  end

  test "lists all buckets, get details for the first", %{conn: conn, project_id: project_id} = _context do
    assert {:ok, bucket_list} = Storage.Buckets.list(conn, project_id)
    # ensure the struct is correct type
    assert %GoogleApi.Storage.V1.Model.Buckets{} = bucket_list
    # omit items for now, we will compare items below
    assert Map.put(bucket_list, :items, nil) == %GoogleApi.Storage.V1.Model.Buckets{kind: "storage#buckets", nextPageToken: nil}
    # we expect at least a single bucket to be available
    bucket = bucket_list.items |> List.first()
    # ensure the struct is correct type
    assert %GoogleApi.Storage.V1.Model.Bucket{} = bucket
    # get the bucket from the API and ensure it's a match
    assert {:ok, bucket_from_get} = Storage.Buckets.get(conn, bucket.id)
    assert bucket_from_get == bucket
  end

  test "insert a bucket", %{conn: conn, project_id: project_id, uid: uid} = _context do
    assert {:ok, bucket} = Storage.Buckets.insert(conn, project_id, "#{project_id}-test-#{uid}")
    # ensure the struct is correct type
    assert %GoogleApi.Storage.V1.Model.Bucket{} = bucket
    # ensure the bucket name and id are both the correct string
    assert bucket.id == "#{project_id}-test-#{uid}"
    assert bucket.name == "#{project_id}-test-#{uid}"
    # ensure the new bucket is in the list of buckets
    {:ok, %GoogleApi.Storage.V1.Model.Buckets{items: buckets}} = Storage.Buckets.list(conn, project_id)
    bucket_found = buckets |> Enum.filter(fn(%GoogleApi.Storage.V1.Model.Bucket{id: id}) -> id == bucket.id end) |> List.first()
    assert bucket_found == bucket
    # ensure we can not add this bucket again
    assert Storage.Buckets.insert(conn, project_id, "#{project_id}-test-#{uid}") == {:error, %Storage.BucketsError{
      code: 409,
      message: "You already own this bucket. Please select another name.",
      errors: [%{"domain" => "global", "message" => "You already own this bucket. Please select another name.", "reason" => "conflict"}],
    }}
  end

  test "insert a bucket and make it public", %{conn: conn, project_id: project_id, uid: uid} = _context do
    bucketname = "#{project_id}-test-#{uid}-public"
    assert {:ok, %GoogleApi.Storage.V1.Model.Bucket{} = bucket_before} = Storage.Buckets.insert(conn, project_id, bucketname)
    assert {:ok, %GoogleApi.Storage.V1.Model.Bucket{} = bucket_after} = Storage.Buckets.make_public(conn, bucketname)
    assert bucket_before != bucket_after
    assert bucket_before.cors == nil
    assert bucket_after.cors == [
      %GoogleApi.Storage.V1.Model.BucketCors{
        maxAgeSeconds: 3600,
        method: ["GET", "HEAD", "DELETE"],
        origin: ["http://*.example.com"],
        responseHeader: ["Content-Type"]
      }
    ]
  end

  test "delete a bucket", %{conn: conn, project_id: project_id} = _context do
    bucketname = "#{project_id}-test-delete"
    # insert the bucket
    {:ok, %GoogleApi.Storage.V1.Model.Bucket{} = _bucket} = Storage.Buckets.insert(conn, project_id, bucketname)
    # ensure the new bucket is in the list of buckets
    {:ok, %GoogleApi.Storage.V1.Model.Buckets{items: buckets}} = Storage.Buckets.list(conn, project_id)
    bucketnames = buckets |> Enum.map(fn(%GoogleApi.Storage.V1.Model.Bucket{id: id}) -> id end)
    assert Enum.member?(bucketnames, bucketname) == true
    # delete it
    assert {:ok, %Tesla.Env{body: ""}} = Storage.Buckets.delete(conn, bucketname)
    # ensure the new bucket is no longer in the list of buckets
    {:ok, %GoogleApi.Storage.V1.Model.Buckets{items: buckets}} = Storage.Buckets.list(conn, project_id)
    bucketnames = buckets |> Enum.map(fn(%GoogleApi.Storage.V1.Model.Bucket{id: id}) -> id end)
    assert Enum.member?(bucketnames, bucketname) == false
  end

end
