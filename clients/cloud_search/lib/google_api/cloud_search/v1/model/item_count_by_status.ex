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

defmodule GoogleApi.CloudSearch.V1.Model.ItemCountByStatus do
  @moduledoc """


  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - Number of items matching the status code.
  *   `indexedItemsCount` (*type:* `String.t`, *default:* `nil`) - Number of items matching the status code for which billing is done. This excludes virtual container items from the total count. This count would not be applicable for items with ERROR or NEW_ITEM status code.
  *   `statusCode` (*type:* `String.t`, *default:* `nil`) - Status of the items.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t() | nil,
          :indexedItemsCount => String.t() | nil,
          :statusCode => String.t() | nil
        }

  field(:count)
  field(:indexedItemsCount)
  field(:statusCode)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ItemCountByStatus do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ItemCountByStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ItemCountByStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
