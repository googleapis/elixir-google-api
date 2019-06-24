# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Analytics.V3.Model.Columns do
  @moduledoc """
  Lists columns (dimensions and metrics) for a particular report type.

  ## Attributes

  *   `attributeNames` (*type:* `list(String.t)`, *default:* `nil`) - List of attributes names returned by columns.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Etag of collection. This etag can be compared with the last response etag to check if response has changed.
  *   `items` (*type:* `list(GoogleApi.Analytics.V3.Model.Column.t)`, *default:* `nil`) - List of columns for a report type.
  *   `kind` (*type:* `String.t`, *default:* `analytics#columns`) - Collection type.
  *   `totalResults` (*type:* `integer()`, *default:* `nil`) - Total number of columns returned in the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeNames => list(String.t()),
          :etag => String.t(),
          :items => list(GoogleApi.Analytics.V3.Model.Column.t()),
          :kind => String.t(),
          :totalResults => integer()
        }

  field(:attributeNames, type: :list)
  field(:etag)
  field(:items, as: GoogleApi.Analytics.V3.Model.Column, type: :list)
  field(:kind)
  field(:totalResults)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.Columns do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.Columns.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.Columns do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
