defmodule Storage.ObjectsError do
  defstruct [
    code: 0,
    message: nil,
    errors: [],
  ]
end
defmodule Storage.Objects do
  @moduledoc """
  Sample Usage of Objects
  https://hexdocs.pm/google_api_storage/GoogleApi.Storage.V1.Api.Objects.html

  This Goth usage assumes you have setup credentials already
  and are using the "default" scope.
  """

  def list(conn, bucketname) do
    conn
    |> GoogleApi.Storage.V1.Api.Objects.storage_objects_list(bucketname)
    |> normalize_response()
  end

  def get(conn, bucketname, objectname) do
    conn
    |> GoogleApi.Storage.V1.Api.Objects.storage_objects_get(bucketname, objectname)
    |> normalize_response()
  end

  def upload_local_file(conn, bucketname, file_path) do

    metadata = %GoogleApi.Storage.V1.Model.Bucket{
      name: Path.basename(file_path),
      # can set other attributes for the bucket (eg: acl)
      # https://hexdocs.pm/google_api_storage/GoogleApi.Storage.V1.Model.Object.html#content
    }

    conn
    |> GoogleApi.Storage.V1.Api.Objects.storage_objects_insert_simple(
      bucketname,
      "multipart",
      metadata,
      file_path
    )
    |> normalize_response()
  end

  def delete(conn, bucketname, objectname) do
    conn
    |> GoogleApi.Storage.V1.Api.Objects.storage_objects_delete(bucketname, objectname)
    |> normalize_response()
  end

  # simplify the responses a bit, and extract/wrap errors
  # def normalize_response({:ok, %Tesla.Env{body: ""}}), do: :ok # valid empty response, simplify
  defp normalize_response({:ok, out}), do: {:ok, out}
  defp normalize_response({:error, %Tesla.Env{body: body} = tesla_env}) do
    case Poison.decode(body) do
      {:ok, %{"error" => err}} ->
        # NOTE Poison v4 changes this
        {:error, Poison.Decode.decode(err, as: %Storage.ObjectsError{})}
      _ -> {:error, body}
    end
  end


end
