defmodule GoogleApi.Storage.StorageTest do
  use GoogleApi.Storage.V1.TestHelper
  alias GoogleApi.Storage.V1.Model.Object

  @bucket_id "chingor-php-gcs"

  test "storage" do
    conn = GoogleApi.Storage.V1.Connection.new(&for_scope/1)

    # insert a file
    obj = %Object{name: "README.md", bucket: @bucket_id}
    path = "README.md"
    {:ok, object} = GoogleApi.Storage.V1.Api.Objects.storage_objects_insert_simple(conn, @bucket_id, "multipart", obj, path)
    |> IO.inspect
    assert %Object{} = object

    # delete the file
    {:ok, _} = GoogleApi.Storage.V1.Api.Objects.storage_objects_delete(conn, @bucket_id, "README.md")
  end
end
