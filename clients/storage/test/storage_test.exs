defmodule GoogleApi.Storage.StorageTest do
  use GoogleApi.Storage.TestHelper
  alias GoogleApi.Storage.V1.Model.Object

  test "storage" do
    bucket_id = System.get_env("BUCKET")
    assert bucket_id, "Please set the BUCKET environment variable"

    conn = GoogleApi.Storage.V1.Connection.new(&for_scope/1)

    # insert a file
    obj = %Object{name: "README.md", bucket: bucket_id}
    path = "README.md"
    {:ok, object} = GoogleApi.Storage.V1.Api.Objects.storage_objects_insert_simple(conn, bucket_id, "multipart", obj, path)
    assert %Object{} = object

    # delete the file
    {:ok, _} = GoogleApi.Storage.V1.Api.Objects.storage_objects_delete(conn, bucket_id, "README.md")
  end
end
