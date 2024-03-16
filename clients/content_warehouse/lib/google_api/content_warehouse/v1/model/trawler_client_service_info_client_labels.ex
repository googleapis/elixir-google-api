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

defmodule GoogleApi.ContentWarehouse.V1.Model.TrawlerClientServiceInfoClientLabels do
  @moduledoc """
  ClientLabels contains client-specified key/value pairs, used to annotate individual FetchRequests and FetchReplies. This is primarily useful when the Multiverse Nexus performs postprocessing of fetchreplies. ClientLabels essentially allow clients to use the Nexus UI to slice statistics computed on fetchreplies by the specified key/value pairs. Note: we don't use "map" type here delibrately in order to avoid the non-deterministric serialization of the "map" field. See b/69064361 for more details.

  ## Attributes

  *   `labelsDeprecated` (*type:* `%{optional(String.t) => GoogleApi.ContentWarehouse.V1.Model.TrawlerClientServiceInfoClientLabelsClientLabelValues.t}`, *default:* `nil`) - ======================== End of Deprecated Part ========================
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  *   `values` (*type:* `list(String.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelsDeprecated =>
            %{
              optional(String.t()) =>
                GoogleApi.ContentWarehouse.V1.Model.TrawlerClientServiceInfoClientLabelsClientLabelValues.t()
            }
            | nil,
          :name => String.t() | nil,
          :values => list(String.t()) | nil
        }

  field(:labelsDeprecated,
    as: GoogleApi.ContentWarehouse.V1.Model.TrawlerClientServiceInfoClientLabelsClientLabelValues,
    type: :map
  )

  field(:name)
  field(:values, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.TrawlerClientServiceInfoClientLabels do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.TrawlerClientServiceInfoClientLabels.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.TrawlerClientServiceInfoClientLabels do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end