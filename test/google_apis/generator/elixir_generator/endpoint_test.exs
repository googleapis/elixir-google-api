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

defmodule GoogleApis.Generator.ElixirGenerator.EndpointTest do
  use ExUnit.Case
  doctest GoogleApis.Generator.ElixirGenerator.Endpoint

  alias GoogleApis.Generator.ElixirGenerator.{Endpoint, ResourceContext, Type}
  alias GoogleApi.Discovery.V1.Model.RestMethod

  @basic """
  {
   "id": "books.familysharing.unshare",
   "path": "familysharing/unshare",
   "httpMethod": "POST",
   "description": "Initiates revoking content that has already been shared with the user's family. Empty response indicates success.",
   "parameters": {
     "docId": {
     "type": "string",
     "description": "The docid to unshare.",
     "location": "query"
     },
     "source": {
     "type": "integer",
     "description": "Number to identify the originator of this request.",
     "required": true,
     "location": "query"
     },
     "volumeId": {
     "type": "string",
     "description": "The volume to unshare.",
     "required": true,
     "location": "query"
     }
   },
   "response": {
    "$ref": "Annotationsdata"
   },
   "parameterOrder": ["volumeId", "source"],
   "scopes": [
     "https://www.googleapis.com/auth/books"
   ]
  }
  """

  @no_response """
   {
    "id": "books.familysharing.unshare",
    "path": "familysharing/unshare",
    "httpMethod": "POST",
    "description": "Initiates revoking content that has already been shared with the user's family. Empty response indicates success.",
    "parameters": {
      "docId": {
      "type": "string",
      "description": "The docid to unshare.",
      "location": "query"
      },
      "source": {
      "type": "string",
      "description": "String to identify the originator of this request.",
      "location": "query"
      },
      "volumeId": {
      "type": "string",
      "description": "The volume to unshare.",
      "location": "query"
      }
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
     "cpksver": {
      "type": "string",
      "description": "The device/version ID from which to release the restriction.",
      "required": true,
      "location": "query"
     },
     "locale": {
      "type": "string",
      "description": "ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.",
      "location": "query"
     },
     "source": {
      "type": "string",
      "description": "String to identify the originator of this request.",
      "location": "query"
     },
     "volumeIds": {
      "type": "string",
      "description": "The volume(s) to release restrictions for.",
      "required": true,
      "repeated": true,
      "location": "query"
     }
    },
    "parameterOrder": [
     "volumeIds",
     "cpksver"
    ],
    "response": {
     "$ref": "DownloadAccesses"
    },
    "scopes": [
     "https://www.googleapis.com/auth/books"
    ]
  }
  """

  test "typespec" do
    endpoints =
      Poison.decode!(@basic, as: %RestMethod{})
      |> Endpoint.from_discovery_method(ResourceContext.default())

    assert 1 == length(endpoints)
    endpoint = List.first(endpoints)

    assert "books_familysharing_unshare(Tesla.Env.client(), String.t, integer(), keyword()) :: {:ok, Default.Namespace.Model.Annotationsdata.t} | {:error, Tesla.Env.t()}" ==
             endpoint.typespec
  end

  test "typespec with no required params" do
    endpoints =
      Poison.decode!(@no_response, as: %RestMethod{})
      |> Endpoint.from_discovery_method(ResourceContext.default())

    assert 1 == length(endpoints)
    endpoint = List.first(endpoints)

    assert "books_familysharing_unshare(Tesla.Env.client(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t()}" ==
             endpoint.typespec
  end

  test "typespec array_param" do
    endpoints =
      Poison.decode!(@array_param, as: %RestMethod{})
      |> Endpoint.from_discovery_method(ResourceContext.default())

    assert 1 == length(endpoints)
    endpoint = List.first(endpoints)

    assert "books_myconfig_release_download_access(Tesla.Env.client(), list(String.t), String.t, keyword()) :: {:ok, Default.Namespace.Model.DownloadAccesses.t} | {:error, Tesla.Env.t()}" ==
             endpoint.typespec
  end

  test "return type" do
    endpoints =
      Poison.decode!(@basic, as: %RestMethod{})
      |> Endpoint.from_discovery_method(ResourceContext.default())

    assert 1 == length(endpoints)
    endpoint = List.first(endpoints)

    assert %Type{} = endpoint.return
    assert "object" == endpoint.return.name
    assert "Default.Namespace.Model.Annotationsdata" == endpoint.return.struct
    assert "Default.Namespace.Model.Annotationsdata.t" == endpoint.return.typespec
  end

  test "return type without response in schema" do
    endpoints =
      Poison.decode!(@no_response, as: %RestMethod{})
      |> Endpoint.from_discovery_method(ResourceContext.default())

    assert 1 == length(endpoints)
    endpoint = List.first(endpoints)

    assert %Type{} = endpoint.return
    assert nil == endpoint.return.name
    assert nil == endpoint.return.struct
    assert "nil" == endpoint.return.typespec
  end
end
