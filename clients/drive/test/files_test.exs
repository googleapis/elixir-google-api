# Copyright 2018 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApi.Drive.FilesTest do
  use GoogleApi.Drive.V3.TestHelper
  alias GoogleApi.Drive.V3.Connection
  alias GoogleApi.Drive.V3.Model.File
  alias GoogleApi.Drive.V3.Api.Files

  test "upload file" do
    conn = Connection.new(token())

    # insert a file
    f = %File{
      name: "README.md",
    }
    {:ok, file} = Files.drive_files_create_simple(conn, "multipart", f, "README.md")
  end

  test "list files" do
    conn = Connection.new(token())

    {:ok, file_list} = Files.drive_files_list(conn)
    Enum.each(file_list.files, fn file ->
      IO.inspect file.id
      IO.inspect file.name
    end)
  end

  defp token do
    t = System.get_env("AUTH_TOKEN")
    assert t, "Please set the AUTH_TOKEN environment variable"
    t
  end
end
