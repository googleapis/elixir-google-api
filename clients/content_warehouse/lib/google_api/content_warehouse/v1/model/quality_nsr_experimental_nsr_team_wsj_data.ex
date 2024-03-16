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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamWSJData do
  @moduledoc """
  This is a wrapper needed for the WSJ corpus. We want the WSJ RPCs to inject both the experimental_data and the keys, and as of June 2022 these need to be first level members of the proto.

  ## Attributes

  *   `experimentalNsrTeamData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData.t`, *default:* `nil`) - 
  *   `lookupKey` (*type:* `String.t`, *default:* `nil`) - The key used to lookup this data in the WSJ corpus. The WSJ data is sitechunk-level, however the documents in the MDU shards are simply urls. WSJ does a mapping from url -> {primary_chunk, secondary, fallbacks, etc.} and retrieves all the keys from the corpus. This lookup key field will keep track of which key was used for this particular lookup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :experimentalNsrTeamData =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData.t() | nil,
          :lookupKey => String.t() | nil
        }

  field(:experimentalNsrTeamData,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamData
  )

  field(:lookupKey)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamWSJData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamWSJData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.QualityNsrExperimentalNsrTeamWSJData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end