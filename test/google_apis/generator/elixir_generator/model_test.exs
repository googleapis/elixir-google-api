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

defmodule GoogleApis.Generator.ElixirGenerator.ModelTest do
  use ExUnit.Case
  doctest GoogleApis.Generator.ElixirGenerator.Model

  alias GoogleApis.Generator.ElixirGenerator.{Model, ResourceContext, Type}
  alias GoogleApi.Discovery.V1.Model.JsonSchema

  @test_schema """
  {
    "id": "Annotation",
    "type": "object",
    "properties": {
     "afterSelectedText": {
      "type": "string",
      "description": "Anchor text after excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty."
     },
     "beforeSelectedText": {
      "type": "string",
      "description": "Anchor text before excerpt. For requests, if the user bookmarked a screen that has no flowing text on it, then this field should be empty."
     },
     "clientVersionRanges": {
      "type": "object",
      "description": "Selection ranges sent from the client.",
      "properties": {
       "cfiRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in CFI format for this annotation sent by client."
       },
       "contentVersion": {
        "type": "string",
        "description": "Content version the client sent in."
       },
       "gbImageRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in GB image format for this annotation sent by client."
       },
       "gbTextRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in GB text format for this annotation sent by client."
       },
       "imageCfiRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in image CFI format for this annotation sent by client."
       }
      }
     },
     "created": {
      "type": "string",
      "description": "Timestamp for the created time of this annotation.",
      "format": "date-time"
     },
     "currentVersionRanges": {
      "type": "object",
      "description": "Selection ranges for the most recent content version.",
      "properties": {
       "cfiRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in CFI format for this annotation for version above."
       },
       "contentVersion": {
        "type": "string",
        "description": "Content version applicable to ranges below."
       },
       "gbImageRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in GB image format for this annotation for version above."
       },
       "gbTextRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in GB text format for this annotation for version above."
       },
       "imageCfiRange": {
        "$ref": "BooksAnnotationsRange",
        "description": "Range in image CFI format for this annotation for version above."
       }
      }
     }
    }
   }
  """

  test "loads nested schemas" do
    schema = Poison.decode!(@test_schema, as: %JsonSchema{})

    models = Model.from_schema("Annotation", schema)
    assert 3 == length(models)

    assert ["Annotation", "AnnotationClientVersionRanges", "AnnotationCurrentVersionRanges"] ==
             Enum.map(models, & &1.name)
  end

  test "loads all schemas from map" do
    schema = Poison.decode!(@test_schema, as: %JsonSchema{})

    models = Model.from_schemas(%{"Annotation" => schema})
    assert 3 == length(models)

    assert ["Annotation", "AnnotationClientVersionRanges", "AnnotationCurrentVersionRanges"] ==
             Enum.map(models, & &1.name)
  end
end
