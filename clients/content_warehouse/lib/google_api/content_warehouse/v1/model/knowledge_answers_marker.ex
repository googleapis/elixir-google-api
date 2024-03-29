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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarker do
  @moduledoc """
  A Marker specifies a Meaning Expression's (i.e. intent FunctionCall) purpose. NOTE: Markers always impact go/intent-resolution semantics.

  ## Attributes

  *   `command` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerCommand.t`, *default:* `nil`) - 
  *   `openQuestion` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerOpenQuestion.t`, *default:* `nil`) - 
  *   `polarQuestion` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerPolarQuestion.t`, *default:* `nil`) - 
  *   `stateOfAffairs` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerStateOfAffairs.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :command => GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerCommand.t() | nil,
          :openQuestion =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerOpenQuestion.t() | nil,
          :polarQuestion =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerPolarQuestion.t() | nil,
          :stateOfAffairs =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerStateOfAffairs.t() | nil
        }

  field(:command, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerCommand)
  field(:openQuestion, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerOpenQuestion)

  field(:polarQuestion,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerPolarQuestion
  )

  field(:stateOfAffairs,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerStateOfAffairs
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarker do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarker.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarker do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
