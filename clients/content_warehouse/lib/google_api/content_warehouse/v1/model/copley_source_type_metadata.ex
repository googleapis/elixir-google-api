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

defmodule GoogleApi.ContentWarehouse.V1.Model.CopleySourceTypeMetadata do
  @moduledoc """
  Contains the source and type information related to a personal entity, for example if it's an hotel or a restaurant (type) and if it comes from gmail, calendar, etc. (source). Next ID: 13

  ## Attributes

  *   `contactAnnotationId` (*type:* `String.t`, *default:* `nil`) - Annotation ID of a contact annotation, e.g. a relationship set via Assistant. This ID is generated by People Write Server. It is used to delete Contact Annotations via People API.
  *   `displayableName` (*type:* `String.t`, *default:* `nil`) - 
  *   `emailIdentifier` (*type:* `String.t`, *default:* `nil`) - Only used if personal_data_provenance == PERSONAL_SOURCE_GMAIL. Used to create a link to the source email in the form: mail.google.com/mail/u/0/?extsrc=sync&client=h&plid={email_identifier}
  *   `eventId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.EventIdMessage.t`, *default:* `nil`) - Populated for some footprints data sources; uniquely identifies the footprint that generated the personal data that this provenance is attached to.
  *   `localDiscoverySettingsMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PersonalizationSettingsApiProtoLocalDiscoveryLocalDiscoverySettingsMetadata.t`, *default:* `nil`) - 
  *   `personalDataProvenance` (*type:* `String.t`, *default:* `nil`) - 
  *   `personalDataType` (*type:* `String.t`, *default:* `nil`) - 
  *   `provenanceCategory` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `sensitivity` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSensitivitySensitivity.t`, *default:* `nil`) - Sensitivity applying to this copley annotation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contactAnnotationId => String.t() | nil,
          :displayableName => String.t() | nil,
          :emailIdentifier => String.t() | nil,
          :eventId => GoogleApi.ContentWarehouse.V1.Model.EventIdMessage.t() | nil,
          :localDiscoverySettingsMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.PersonalizationSettingsApiProtoLocalDiscoveryLocalDiscoverySettingsMetadata.t()
            | nil,
          :personalDataProvenance => String.t() | nil,
          :personalDataType => String.t() | nil,
          :provenanceCategory => list(String.t()) | nil,
          :sensitivity =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSensitivitySensitivity.t() | nil
        }

  field(:contactAnnotationId)
  field(:displayableName)
  field(:emailIdentifier)
  field(:eventId, as: GoogleApi.ContentWarehouse.V1.Model.EventIdMessage)

  field(:localDiscoverySettingsMetadata,
    as:
      GoogleApi.ContentWarehouse.V1.Model.PersonalizationSettingsApiProtoLocalDiscoveryLocalDiscoverySettingsMetadata
  )

  field(:personalDataProvenance)
  field(:personalDataType)
  field(:provenanceCategory, type: :list)

  field(:sensitivity,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSensitivitySensitivity
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CopleySourceTypeMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CopleySourceTypeMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CopleySourceTypeMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
