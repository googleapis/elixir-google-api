# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Generator.ElixirGenerator.ParameterTest do
  use ExUnit.Case
  doctest GoogleApis.Generator.ElixirGenerator.Parameter

  alias GoogleApis.Generator.ElixirGenerator.Parameter
  alias GoogleApi.Discovery.V1.Model.RestMethod

  @test_json """
  {
    "id": "books.bookshelves.get",
    "path": "users/{userId}/bookshelves/{shelf}",
    "httpMethod": "GET",
    "description": "Retrieves metadata for a specific bookshelf for the specified user.",
    "parameters": {
     "shelf": {
      "type": "string",
      "description": "ID of bookshelf to retrieve.",
      "required": true,
      "location": "path"
     },
     "source": {
      "type": "string",
      "description": "String to identify the originator of this request.",
      "location": "query"
     },
     "userId": {
      "type": "string",
      "description": "ID of user for whom to retrieve bookshelves.",
      "required": true,
      "location": "path"
     }
    },
    "parameterOrder": [
     "userId",
     "shelf"
    ],
    "response": {
     "$ref": "Bookshelf"
    },
    "scopes": [
     "https://www.googleapis.com/auth/books"
    ]
  }
  """

  test "split method parameters" do
    method = Poison.decode!(@test_json, as: %RestMethod{})
    {required, optional} = Parameter.from_discovery_method(method)

    assert 2 == length(required)
    assert 1 == length(optional)

    assert Enum.all?(required, fn parameter -> %Parameter{} = parameter end)
    assert Enum.all?(optional, fn parameter -> %Parameter{} = parameter end)

    assert ["userId", "shelf"] == Enum.map(required, & &1.name)
    assert ["source"] == Enum.map(optional, & &1.name)
  end
end
