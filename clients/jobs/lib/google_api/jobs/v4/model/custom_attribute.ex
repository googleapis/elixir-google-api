# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Jobs.V4.Model.CustomAttribute do
  @moduledoc """
  Custom attribute values that are either filterable or non-filterable.

  ## Attributes

  *   `filterable` (*type:* `boolean()`, *default:* `nil`) - If the `filterable` flag is true, the custom field values may be used for custom attribute filters JobQuery.custom_attribute_filter. If false, these values may not be used for custom attribute filters. Default is false.
  *   `keywordSearchable` (*type:* `boolean()`, *default:* `nil`) - If the `keyword_searchable` flag is true, the keywords in custom fields are searchable by keyword match. If false, the values are not searchable by keyword match. Default is false.
  *   `longValues` (*type:* `list(String.t)`, *default:* `nil`) - Exactly one of string_values or long_values must be specified. This field is used to perform number range search. (`EQ`, `GT`, `GE`, `LE`, `LT`) over filterable `long_value`. Currently at most 1 long_values is supported.
  *   `stringValues` (*type:* `list(String.t)`, *default:* `nil`) - Exactly one of string_values or long_values must be specified. This field is used to perform a string match (`CASE_SENSITIVE_MATCH` or `CASE_INSENSITIVE_MATCH`) search. For filterable `string_value`s, a maximum total number of 200 values is allowed, with each `string_value` has a byte size of no more than 500B. For unfilterable `string_values`, the maximum total byte size of unfilterable `string_values` is 50KB. Empty string isn't allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filterable => boolean() | nil,
          :keywordSearchable => boolean() | nil,
          :longValues => list(String.t()) | nil,
          :stringValues => list(String.t()) | nil
        }

  field(:filterable)
  field(:keywordSearchable)
  field(:longValues, type: :list)
  field(:stringValues, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V4.Model.CustomAttribute do
  def decode(value, options) do
    GoogleApi.Jobs.V4.Model.CustomAttribute.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V4.Model.CustomAttribute do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
