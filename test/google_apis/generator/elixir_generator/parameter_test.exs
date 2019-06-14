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

  alias GoogleApis.Generator.ElixirGenerator.{Parameter, Type}
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

  @array_param """
  {
    "id": "books.myconfig.releaseDownloadAccess",
    "path": "myconfig/releaseDownloadAccess",
    "httpMethod": "POST",
    "description": "Release downloaded content access restriction.",
    "parameters": {
     "volumeIds": {
      "type": "string",
      "description": "The volume(s) to release restrictions for.",
      "required": true,
      "repeated": true,
      "location": "query"
     }
    },
    "parameterOrder": [
     "volumeIds"
    ],
    "response": {
     "$ref": "DownloadAccesses"
    },
    "scopes": [
     "https://www.googleapis.com/auth/books"
    ]
  }
  """

  @request_with_body """
  {
    "id": "books.myconfig.updateUserSettings",
    "path": "myconfig/updateUserSettings",
    "httpMethod": "POST",
    "description": "Sets the settings for the user. If a sub-object is specified, it will overwrite the existing sub-object stored in the server. Unspecified sub-objects will retain the existing value.",
    "parameters": {
     "source": {
      "type": "string",
      "description": "String to identify the originator of this request.",
      "location": "query"
     }
    },
    "request": {
     "$ref": "Usersettings"
    },
    "response": {
     "$ref": "Usersettings"
    },
    "scopes": [
     "https://www.googleapis.com/auth/books"
    ]
  }
  """

  @request_body """
  {
    "id": "books.myconfig.updateUserSettings",
    "path": "myconfig/updateUserSettings",
    "httpMethod": "POST",
    "description": "Sets the settings for the user. If a sub-object is specified, it will overwrite the existing sub-object stored in the server. Unspecified sub-objects will retain the existing value.",
    "request": {
     "$ref": "Usersettings"
    },
    "response": {
     "$ref": "Usersettings"
    },
    "scopes": [
     "https://www.googleapis.com/auth/books"
    ]
  }
  """

  @request_with_parameter_name """
  {
    "id": "books.myconfig.updateUserSettings",
    "path": "myconfig/updateUserSettings",
    "httpMethod": "POST",
    "description": "Sets the settings for the user. If a sub-object is specified, it will overwrite the existing sub-object stored in the server. Unspecified sub-objects will retain the existing value.",
    "request": {
     "$ref": "Usersettings",
     "parameterName": "settings"
    },
    "response": {
     "$ref": "Usersettings"
    },
    "scopes": [
     "https://www.googleapis.com/auth/books"
    ]
  }
  """

  @no_parameters """
  {
    "id": "noparams",
    "path": "myconfig/updateUserSettings",
    "httpMethod": "GET",
    "description": "No parameter method",
    "response": {
     "$ref": "Usersettings"
    },
    "scopes": [
     "https://www.googleapis.com/auth/books"
    ]
  }
  """

  @dasherized_parameters """
  {
    "id": "analytics.data.ga.get",
    "path": "data/ga",
    "httpMethod": "GET",
    "description": "Returns Analytics data for a view (profile).",
    "parameters": {
     "end-date": {
      "type": "string",
      "description": "End date for fetching Analytics data. Request can should specify an end date formatted as YYYY-MM-DD, or as a relative date (e.g., today, yesterday, or 7daysAgo). The default value is yesterday.",
      "required": true,
      "pattern": "[0-9]{4}-[0-9]{2}-[0-9]{2}|today|yesterday|[0-9]+(daysAgo)",
      "location": "query"
     }
    },
    "parameterOrder": [
     "end-date"
    ],
    "response": {
     "$ref": "GaData"
    },
    "scopes": [
     "https://www.googleapis.com/auth/analytics",
     "https://www.googleapis.com/auth/analytics.readonly"
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

  test "array types" do
    method = Poison.decode!(@array_param, as: %RestMethod{})
    {required, optional} = Parameter.from_discovery_method(method)

    assert 1 == length(required)
    assert 0 == length(optional)

    [param | _rest] = required
    assert "volumeIds" == param.name
    assert %Type{} = param.type
    assert "list(String.t)" == param.type.typespec
  end

  test "request type adds optional body parameter" do
    method = Poison.decode!(@request_body, as: %RestMethod{})
    {required, optional} = Parameter.from_discovery_method(method)

    assert 0 == length(required)
    assert 1 == length(optional)

    param = Enum.at(optional, 0)
    assert "body" == param.name
    assert %Type{} = param.type
    assert "Default.Namespace.Model.Usersettings.t" == param.type.typespec
  end

  test "request type adds optional body parameter with specified name" do
    method = Poison.decode!(@request_with_parameter_name, as: %RestMethod{})
    {required, optional} = Parameter.from_discovery_method(method)

    assert 0 == length(required)
    assert 1 == length(optional)

    param = Enum.at(optional, 0)
    assert "settings" == param.name
    assert %Type{} = param.type
    assert "Default.Namespace.Model.Usersettings.t" == param.type.typespec
  end

  test "request type adds optional body parameter as last parameter" do
    method = Poison.decode!(@request_with_body, as: %RestMethod{})
    {required, optional} = Parameter.from_discovery_method(method)

    assert 0 == length(required)
    assert 2 == length(optional)

    param = Enum.at(optional, -1)
    assert "body" == param.name
    assert %Type{} = param.type
    assert "Default.Namespace.Model.Usersettings.t" == param.type.typespec
  end

  test "no parameters" do
    method = Poison.decode!(@no_parameters, as: %RestMethod{})
    {required, optional} = Parameter.from_discovery_method(method)

    assert 0 == length(required)
    assert 0 == length(optional)
  end

  test "dasherized parameters" do
    method = Poison.decode!(@dasherized_parameters, as: %RestMethod{})
    {required, optional} = Parameter.from_discovery_method(method)

    assert 1 == length(required)
    assert 0 == length(optional)

    param = Enum.at(required, 0)
    assert "end-date" == param.name
    assert "end_date" == param.variable_name
  end
end
