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

defmodule GoogleApi.Redis.V1.Model.DatabaseResourceHealthSignalData do
  @moduledoc """
  Common model for database resource health signal data.

  ## Attributes

  *   `additionalMetadata` (*type:* `map()`, *default:* `nil`) - Any other additional metadata
  *   `compliance` (*type:* `list(GoogleApi.Redis.V1.Model.Compliance.t)`, *default:* `nil`) - Industry standards associated with this signal; if this signal is an issue, that could be a violation of the associated industry standard(s). For example, AUTO_BACKUP_DISABLED signal is associated with CIS GCP 1.1, CIS GCP 1.2, CIS GCP 1.3, NIST 800-53 and ISO-27001 compliance standards. If a database resource does not have automated backup enable, it will violate these following industry standards.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description associated with signal
  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The last time at which the event described by this signal took place
  *   `externalUri` (*type:* `String.t`, *default:* `nil`) - The external-uri of the signal, using which more information about this signal can be obtained. In GCP, this will take user to SCC page to get more details about signals.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the signal, ex: PUBLIC_SQL_INSTANCE, SQL_LOG_ERROR_VERBOSITY etc.
  *   `provider` (*type:* `String.t`, *default:* `nil`) - Cloud provider name. Ex: GCP/AWS/Azure/OnPrem/SelfManaged
  *   `resourceContainer` (*type:* `String.t`, *default:* `nil`) - Closest parent container of this resource. In GCP, 'container' refers to a Cloud Resource Manager project. It must be resource name of a Cloud Resource Manager project with the format of "provider//", such as "projects/123". For GCP provided resources, number should be project number.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Required. Database resource name associated with the signal. Resource name to follow CAIS resource_name format as noted here go/condor-common-datamodel
  *   `signalClass` (*type:* `String.t`, *default:* `nil`) - Required. The class of the signal, such as if it's a THREAT or VULNERABILITY.
  *   `signalId` (*type:* `String.t`, *default:* `nil`) - Required. Unique identifier for the signal. This is an unique id which would be mainatined by partner to identify a signal.
  *   `signalSeverity` (*type:* `String.t`, *default:* `nil`) - The severity of the signal, such as if it's a HIGH or LOW severity.
  *   `signalType` (*type:* `String.t`, *default:* `nil`) - Required. Type of signal, for example, `AVAILABLE_IN_MULTIPLE_ZONES`, `LOGGING_MOST_ERRORS`, etc.
  *   `state` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalMetadata => map() | nil,
          :compliance => list(GoogleApi.Redis.V1.Model.Compliance.t()) | nil,
          :description => String.t() | nil,
          :eventTime => DateTime.t() | nil,
          :externalUri => String.t() | nil,
          :name => String.t() | nil,
          :provider => String.t() | nil,
          :resourceContainer => String.t() | nil,
          :resourceName => String.t() | nil,
          :signalClass => String.t() | nil,
          :signalId => String.t() | nil,
          :signalSeverity => String.t() | nil,
          :signalType => String.t() | nil,
          :state => String.t() | nil
        }

  field(:additionalMetadata, type: :map)
  field(:compliance, as: GoogleApi.Redis.V1.Model.Compliance, type: :list)
  field(:description)
  field(:eventTime, as: DateTime)
  field(:externalUri)
  field(:name)
  field(:provider)
  field(:resourceContainer)
  field(:resourceName)
  field(:signalClass)
  field(:signalId)
  field(:signalSeverity)
  field(:signalType)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1.Model.DatabaseResourceHealthSignalData do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.DatabaseResourceHealthSignalData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1.Model.DatabaseResourceHealthSignalData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
