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

defmodule GoogleApi.SecurityCenter.V1.Model.Finding do
  @moduledoc """
  Security Command Center finding. A finding is a record of assessment data like security, risk, health, or privacy, that is ingested into Security Command Center for presentation, notification, analysis, policy testing, and enforcement. For example, a cross-site scripting (XSS) vulnerability in an App Engine application is a finding.

  ## Attributes

  *   `access` (*type:* `GoogleApi.SecurityCenter.V1.Model.Access.t`, *default:* `nil`) - Access details associated to the Finding, such as more information on the caller, which method was accessed, from where, etc.
  *   `canonicalName` (*type:* `String.t`, *default:* `nil`) - The canonical name of the finding. It's either "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}", "folders/{folder_id}/sources/{source_id}/findings/{finding_id}" or "projects/{project_number}/sources/{source_id}/findings/{finding_id}", depending on the closest CRM ancestor of the resource associated with the finding.
  *   `category` (*type:* `String.t`, *default:* `nil`) - The additional taxonomy group within findings from a given source. This field is immutable after creation time. Example: "XSS_FLASH_INJECTION"
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the finding was created in Security Command Center.
  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the finding was first detected. If an existing finding is updated, then this is the time the update occurred. For example, if the finding represents an open firewall, this property captures the time the detector believes the firewall became open. The accuracy is determined by the detector. If the finding is later resolved, then this time reflects when the finding was resolved. This must not be set to a value greater than the current timestamp.
  *   `externalSystems` (*type:* `%{optional(String.t) => GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExternalSystem.t}`, *default:* `nil`) - Output only. Third party SIEM/SOAR fields within SCC, contains external system information and external system finding fields.
  *   `externalUri` (*type:* `String.t`, *default:* `nil`) - The URI that, if available, points to a web page outside of Security Command Center where additional information about the finding can be found. This field is guaranteed to be either empty or a well formed URL.
  *   `findingClass` (*type:* `String.t`, *default:* `nil`) - The class of the finding.
  *   `indicator` (*type:* `GoogleApi.SecurityCenter.V1.Model.Indicator.t`, *default:* `nil`) - Represents what's commonly known as an Indicator of compromise (IoC) in computer forensics. This is an artifact observed on a network or in an operating system that, with high confidence, indicates a computer intrusion. Reference: https://en.wikipedia.org/wiki/Indicator_of_compromise
  *   `mitreAttack` (*type:* `GoogleApi.SecurityCenter.V1.Model.MitreAttack.t`, *default:* `nil`) - MITRE ATT&CK tactics and techniques related to this finding. See: https://attack.mitre.org
  *   `mute` (*type:* `String.t`, *default:* `nil`) - Indicates the mute state of a finding (either unspecified, muted, unmuted or undefined). Unlike other attributes of a finding, a finding provider shouldn't set the value of mute.
  *   `muteInitiator` (*type:* `String.t`, *default:* `nil`) - First known as mute_annotation. Records additional information about the mute operation e.g. mute config that muted the finding, user who muted the finding, etc. Unlike other attributes of a finding, a finding provider shouldn't set the value of mute.
  *   `muteUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The most recent time this finding was muted or unmuted.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The relative resource name of this finding. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name Example: "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}"
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The relative resource name of the source the finding belongs to. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name This field is immutable after creation time. For example: "organizations/{organization_id}/sources/{source_id}"
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - For findings on Google Cloud resources, the full resource name of the Google Cloud resource this finding is for. See: https://cloud.google.com/apis/design/resource_names#full_resource_name When the finding is for a non-Google Cloud resource, the resourceName can be a customer or partner defined string. This field is immutable after creation time.
  *   `securityMarks` (*type:* `GoogleApi.SecurityCenter.V1.Model.SecurityMarks.t`, *default:* `nil`) - Output only. User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the finding.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity of the finding. This field is managed by the source that writes the finding.
  *   `sourceProperties` (*type:* `map()`, *default:* `nil`) - Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the finding.
  *   `vulnerability` (*type:* `GoogleApi.SecurityCenter.V1.Model.Vulnerability.t`, *default:* `nil`) - Represents vulnerability specific fields like cve, cvss scores etc. CVE stands for Common Vulnerabilities and Exposures (https://cve.mitre.org/about/)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :access => GoogleApi.SecurityCenter.V1.Model.Access.t() | nil,
          :canonicalName => String.t() | nil,
          :category => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :eventTime => DateTime.t() | nil,
          :externalSystems =>
            %{
              optional(String.t()) =>
                GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExternalSystem.t()
            }
            | nil,
          :externalUri => String.t() | nil,
          :findingClass => String.t() | nil,
          :indicator => GoogleApi.SecurityCenter.V1.Model.Indicator.t() | nil,
          :mitreAttack => GoogleApi.SecurityCenter.V1.Model.MitreAttack.t() | nil,
          :mute => String.t() | nil,
          :muteInitiator => String.t() | nil,
          :muteUpdateTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :parent => String.t() | nil,
          :resourceName => String.t() | nil,
          :securityMarks => GoogleApi.SecurityCenter.V1.Model.SecurityMarks.t() | nil,
          :severity => String.t() | nil,
          :sourceProperties => map() | nil,
          :state => String.t() | nil,
          :vulnerability => GoogleApi.SecurityCenter.V1.Model.Vulnerability.t() | nil
        }

  field(:access, as: GoogleApi.SecurityCenter.V1.Model.Access)
  field(:canonicalName)
  field(:category)
  field(:createTime, as: DateTime)
  field(:eventTime, as: DateTime)

  field(:externalSystems,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExternalSystem,
    type: :map
  )

  field(:externalUri)
  field(:findingClass)
  field(:indicator, as: GoogleApi.SecurityCenter.V1.Model.Indicator)
  field(:mitreAttack, as: GoogleApi.SecurityCenter.V1.Model.MitreAttack)
  field(:mute)
  field(:muteInitiator)
  field(:muteUpdateTime, as: DateTime)
  field(:name)
  field(:parent)
  field(:resourceName)
  field(:securityMarks, as: GoogleApi.SecurityCenter.V1.Model.SecurityMarks)
  field(:severity)
  field(:sourceProperties, type: :map)
  field(:state)
  field(:vulnerability, as: GoogleApi.SecurityCenter.V1.Model.Vulnerability)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Finding do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Finding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Finding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
