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

defmodule GoogleApi.BigQuery.V2.Model.QueryParameterType do
  @moduledoc """
  The type of a query parameter.

  ## Attributes

  *   `arrayType` (*type:* `GoogleApi.BigQuery.V2.Model.QueryParameterType.t`, *default:* `nil`) - Optional. The type of the array's elements, if this is an array.
  *   `rangeElementType` (*type:* `GoogleApi.BigQuery.V2.Model.QueryParameterType.t`, *default:* `nil`) - Optional. The element type of the range, if this is a range.
  *   `structTypes` (*type:* `list(GoogleApi.BigQuery.V2.Model.QueryParameterTypeStructTypes.t)`, *default:* `nil`) - Optional. The types of the fields of this struct, in order, if this is a struct.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The top level type of this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arrayType => GoogleApi.BigQuery.V2.Model.QueryParameterType.t() | nil,
          :rangeElementType => GoogleApi.BigQuery.V2.Model.QueryParameterType.t() | nil,
          :structTypes =>
            list(GoogleApi.BigQuery.V2.Model.QueryParameterTypeStructTypes.t()) | nil,
          :type => String.t() | nil
        }

  field(:arrayType, as: GoogleApi.BigQuery.V2.Model.QueryParameterType)
  field(:rangeElementType, as: GoogleApi.BigQuery.V2.Model.QueryParameterType)
  field(:structTypes, as: GoogleApi.BigQuery.V2.Model.QueryParameterTypeStructTypes, type: :list)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.QueryParameterType do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.QueryParameterType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.QueryParameterType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
