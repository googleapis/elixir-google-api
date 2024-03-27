defmodule Storage.ObjectsTest do
  use ExUnit.Case
  doctest Storage.Objects

  setup do
    {:ok, token} = Goth.Token.for_scope("https://www.googleapis.com/auth/cloud-platform")
    conn = GoogleApi.Storage.V1.Connection.new(token.token)
    project_id = Config.get(:storage, :project_id, "elixir-g-api-samples")
    bucket = Config.get(:storage, :bucket, "elixir-g-api-samples-persist")

    # # cleanup after test runs
    # on_exit(fn ->
    #   case Storage.Objects.list(conn, project_id) do
    #     {:ok, %GoogleApi.Storage.V1.Model.Objects{items: Objects}} ->
    #       {:ok, reg} = Regex.compile("#{project_id}-test-")
    #       Objects
    #       |> Enum.map(fn(%GoogleApi.Storage.V1.Model.Bucket{id: id}) -> id end)
    #       |> Enum.filter(fn(id) -> Regex.match?(reg, id) end)
    #       |> Enum.each(fn(id) ->
    #         Process.sleep(200) # rate limits on deleting Objects
    #         Storage.Objects.delete(conn, id)
    #       end)
    #     _ -> nil
    #   end
    # end)

    # return context for tests
    {:ok,
      project_id: project_id,
      bucket: bucket,
      token: token,
      conn: conn,
      uid: :rand.uniform(89_999) + 10_000,
    }
  end

  test "lists all objects in bucket", %{conn: conn, bucket: bucketname} = _context do
    assert {:ok, %GoogleApi.Storage.V1.Model.Objects{} = object_list} = Storage.Objects.list(conn, bucketname)
    # we expect at least a single object to be available
    obj = object_list.items |> List.first()
    # ensure the struct is correct type
    assert %GoogleApi.Storage.V1.Model.Object{} = obj
    # get the bucket from the API and ensure it's a match
    assert {:ok, obj_from_get} = Storage.Objects.get(conn, bucketname, obj.name)
    assert obj_from_get == obj
  end

  test "simple upload a new file, then delete it", %{conn: conn, bucket: bucketname, uid: uid} = _context do
    filename = "simple_upload_new_file_#{uid}.txt"
    file_path = Path.join([System.tmp_dir, filename])
    jibberish = 0..99_999 |> Enum.map(fn _ -> <<Enum.random(0..255)>> end) |> Enum.join()
    assert :ok == File.write(file_path, jibberish)
    assert {:ok, %GoogleApi.Storage.V1.Model.Object{} = obj} = Storage.Objects.upload_local_file(conn, bucketname, file_path)
    File.rm(file_path)
    # get the bucket from the API and ensure it's a match
    assert {:ok, obj_from_get} = Storage.Objects.get(conn, bucketname, obj.name)
    assert obj_from_get == obj
    assert obj.size > 10_000
    assert obj.selfLink == "https://www.googleapis.com/storage/v1/b/#{bucketname}/o/#{filename}"
    # now delete it
    assert {:ok, %Tesla.Env{body: ""}} = Storage.Objects.delete(conn, bucketname, filename)
    # ensure it's not there
    assert {:error, %Storage.ObjectsError{} = err} = Storage.Objects.get(conn, bucketname, filename)
    assert err == %Storage.ObjectsError{
      code: 404,
      errors: [
        %{
          "domain" => "global",
          "message" => "No such object: #{bucketname}/#{filename}",
          "reason" => "notFound"
        }
      ],
      message: "No such object: #{bucketname}/#{filename}"
    }
  end

  # TODO multipart, resumable upload, stream data...
end
