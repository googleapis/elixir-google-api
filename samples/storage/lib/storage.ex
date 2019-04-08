defmodule Storage do
  @moduledoc """
  Central API for Storage sample application

  For more examples, see:
    Storage.Buckets
    Storage.Objects
  """

  @doc """
  Get a simple configuration for "normal" opperations

  NOTE: we could cache this here, extract to it's own module,
  or use a custom gax connect connection

  ## Examples

      iex> Storage.conf() |> Map.keys()
      [:bucket, :conn, :project_id, :token]

  """
  def conf() do
    {:ok, token} = Goth.Token.for_scope("https://www.googleapis.com/auth/cloud-platform")
    conn = GoogleApi.Storage.V1.Connection.new(token.token)
    project_id = Config.get(:storage, :project_id, "elixir-g-api-samples")
    bucket = Config.get(:storage, :bucket, "elixir-g-api-samples-persist")
    %{bucket: bucket, conn: conn, project_id: project_id, token: token}
  end

  @doc """
  Upload a file

  ## Examples

      iex> filename = "upload_file_doctest.txt"
      iex> file_path = Path.join([System.tmp_dir, filename])
      iex> File.write(file_path, "doctest")
      iex> {:ok, %GoogleApi.Storage.V1.Model.Object{} = obj} = Storage.upload_file(file_path)
      iex> Map.get(obj, :name)
      "upload_file_doctest.txt"

  """
  def upload_file(file_path) do
    %{conn: conn, bucket: bucket} = conf()
    Storage.Objects.upload_local_file(conn, bucket, file_path)
  end

end
