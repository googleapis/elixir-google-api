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

defmodule GoogleApi.DFAReporting.V4.Model.UvarFilter do
  @moduledoc """
  Defines the filtering on a single uvar.

  ## Attributes

  *   `complement` (*type:* `boolean()`, *default:* `nil`) - Return rows which don't match this filter.
  *   `index` (*type:* `String.t`, *default:* `nil`) - Custom variable index the filter is applied to.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource this is, in this case dfareporting#uvarFilter.
  *   `match` (*type:* `String.t`, *default:* `nil`) - Indicates how the filter should be matched to the values.
  *   `values` (*type:* `list(String.t)`, *default:* `nil`) - Values to filter on.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :complement => boolean() | nil,
          :index => String.t() | nil,
          :kind => String.t() | nil,
          :match => String.t() | nil,
          :values => list(String.t()) | nil
        }

  field(:complement)
  field(:index)
  field(:kind)
  field(:match)
  field(:values, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.UvarFilter do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.UvarFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.UvarFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
