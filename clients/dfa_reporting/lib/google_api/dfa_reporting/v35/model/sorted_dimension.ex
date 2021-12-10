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

defmodule GoogleApi.DFAReporting.V35.Model.SortedDimension do
  @moduledoc """
  Represents a sorted dimension.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource this is, in this case dfareporting#sortedDimension.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the dimension.
  *   `sortOrder` (*type:* `String.t`, *default:* `nil`) - An optional sort order for the dimension column.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :sortOrder => String.t() | nil
        }

  field(:kind)
  field(:name)
  field(:sortOrder)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.SortedDimension do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.SortedDimension.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.SortedDimension do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
