defmodule Storage.BucketsError do
  defstruct [
    code: 0,
    message: nil,
    errors: [],
  ]
end
defmodule Storage.Buckets do
  @moduledoc """
  Sample Usage of Buckets
  https://hexdocs.pm/google_api_storage/GoogleApi.Storage.V1.Api.Buckets.html

  This Goth usage assumes you have setup credentials already
  and are using the "default" scope.
  """

  def list(conn, project_id) do
    conn
    |> GoogleApi.Storage.V1.Api.Buckets.storage_buckets_list(project_id)
    |> normalize_response()
  end

  def get(conn, bucketname) do
    conn
    |> GoogleApi.Storage.V1.Api.Buckets.storage_buckets_get(bucketname)
    |> normalize_response()
  end

  def insert(conn, project_id, bucketname) do

    bucket = %GoogleApi.Storage.V1.Model.Bucket{
      id: bucketname,
      name: bucketname,
      # can set other attributes for the bucket (eg: acl)
      # https://hexdocs.pm/google_api_storage/GoogleApi.Storage.V1.Model.Bucket.html#content
    }

    conn
    |> GoogleApi.Storage.V1.Api.Buckets.storage_buckets_insert(project_id, [
      # can send other options for insert
      body: bucket
    ])
    |> normalize_response()
  end

  def delete(conn, bucketname) do
    conn
    |> GoogleApi.Storage.V1.Api.Buckets.storage_buckets_delete(bucketname)
    |> normalize_response()
  end

  def make_public(conn, bucketname) do
    case get(conn, bucketname) do
      {:ok, bucket} ->
        conn
        |> GoogleApi.Storage.V1.Api.Buckets.storage_buckets_patch(bucketname, [
          body: Map.merge(bucket, %{
            cors: [
              %GoogleApi.Storage.V1.Model.BucketCors{
                origin: ["http://*.example.com"],
                responseHeader: ["Content-Type"],
                method: ["GET", "HEAD", "DELETE"],
                maxAgeSeconds: 3600
              }
            ],
            # TODO determine if we can make a generic public ACL
            # acl: []
          })
        ])
        |> normalize_response()
      {:err, err} -> {:err, err}
    end
  end

  # simplify the responses a bit, and extract/wrap errors
  # def normalize_response({:ok, %Tesla.Env{body: ""}}), do: :ok # valid empty response, simplify
  defp normalize_response({:ok, out}), do: {:ok, out}
  defp normalize_response({:error, %Tesla.Env{body: body} = tesla_env}) do
    case Poison.decode(body) do
      {:ok, %{"error" => err}} ->
        # NOTE Poison v4 changes this
        {:error, Poison.Decode.decode(err, as: %Storage.BucketsError{})}
      _ -> {:error, body}
    end
  end


end
