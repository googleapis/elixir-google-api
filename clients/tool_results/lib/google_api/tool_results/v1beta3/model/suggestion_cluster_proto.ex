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

defmodule GoogleApi.ToolResults.V1beta3.Model.SuggestionClusterProto do
  @moduledoc """
  A set of similar suggestions that we suspect are closely related. This proto and most of the nested protos are branched from foxandcrown.prelaunchreport.service.SuggestionClusterProto, replacing PLR's dependencies with FTL's.

  ## Attributes

  *   `category` (*type:* `String.t`, *default:* `nil`) - Category in which these types of suggestions should appear. Always set.
  *   `suggestions` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.SuggestionProto.t)`, *default:* `nil`) - A sequence of suggestions. All of the suggestions within a cluster must have the same SuggestionPriority and belong to the same SuggestionCategory. Suggestions with the same screenshot URL should be adjacent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :category => String.t() | nil,
          :suggestions => list(GoogleApi.ToolResults.V1beta3.Model.SuggestionProto.t()) | nil
        }

  field(:category)
  field(:suggestions, as: GoogleApi.ToolResults.V1beta3.Model.SuggestionProto, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.SuggestionClusterProto do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.SuggestionClusterProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.SuggestionClusterProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
