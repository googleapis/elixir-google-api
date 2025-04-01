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

  *   `nextSteps` (*type:* `String.t`, *default:* `nil`) - Steps to address the finding.
  *   `attackExposure` (*type:* `GoogleApi.SecurityCenter.V1.Model.AttackExposure.t`, *default:* `nil`) - The results of an attack path simulation relevant to this finding.
  *   `groupMemberships` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.GroupMembership.t)`, *default:* `nil`) - Contains details about groups of which this finding is a member. A group is a collection of findings that are related in some way. This field cannot be updated. Its value is ignored in all update requests.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the finding was created in Security Command Center.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the finding.
  *   `chokepoint` (*type:* `GoogleApi.SecurityCenter.V1.Model.Chokepoint.t`, *default:* `nil`) - Contains details about a chokepoint, which is a resource or resource group where high-risk attack paths converge, based on [attack path simulations] (https://cloud.google.com/security-command-center/docs/attack-exposure-learn#attack_path_simulations). This field cannot be updated. Its value is ignored in all update requests.
  *   `orgPolicies` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.OrgPolicy.t)`, *default:* `nil`) - Contains information about the org policies associated with the finding.
  *   `database` (*type:* `GoogleApi.SecurityCenter.V1.Model.Database.t`, *default:* `nil`) - Database associated with the finding.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The [relative resource name](https://cloud.google.com/apis/design/resource_names#relative_resource_name) of the finding. Example: "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}", "folders/{folder_id}/sources/{source_id}/findings/{finding_id}", "projects/{project_id}/sources/{source_id}/findings/{finding_id}".
  *   `dataFlowEvents` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.DataFlowEvent.t)`, *default:* `nil`) - Data flow events associated with the finding.
  *   `vulnerability` (*type:* `GoogleApi.SecurityCenter.V1.Model.Vulnerability.t`, *default:* `nil`) - Represents vulnerability-specific fields like CVE and CVSS scores. CVE stands for Common Vulnerabilities and Exposures (https://cve.mitre.org/about/)
  *   `ipRules` (*type:* `GoogleApi.SecurityCenter.V1.Model.IpRules.t`, *default:* `nil`) - IP rules associated with the finding.
  *   `mute` (*type:* `String.t`, *default:* `nil`) - Indicates the mute state of a finding (either muted, unmuted or undefined). Unlike other attributes of a finding, a finding provider shouldn't set the value of mute.
  *   `moduleName` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the module which generated the finding. Example: folders/598186756061/securityHealthAnalyticsSettings/customModules/56799441161885
  *   `dataRetentionDeletionEvents` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.DataRetentionDeletionEvent.t)`, *default:* `nil`) - Data retention deletion events associated with the finding.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Contains more details about the finding.
  *   `notebook` (*type:* `GoogleApi.SecurityCenter.V1.Model.Notebook.t`, *default:* `nil`) - Notebook associated with the finding.
  *   `cloudDlpDataProfile` (*type:* `GoogleApi.SecurityCenter.V1.Model.CloudDlpDataProfile.t`, *default:* `nil`) - Cloud DLP data profile that is associated with the finding.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity of the finding. This field is managed by the source that writes the finding.
  *   `muteInfo` (*type:* `GoogleApi.SecurityCenter.V1.Model.MuteInfo.t`, *default:* `nil`) - Output only. The mute information regarding this finding.
  *   `kubernetes` (*type:* `GoogleApi.SecurityCenter.V1.Model.Kubernetes.t`, *default:* `nil`) - Kubernetes resources associated with the finding.
  *   `toxicCombination` (*type:* `GoogleApi.SecurityCenter.V1.Model.ToxicCombination.t`, *default:* `nil`) - Contains details about a group of security issues that, when the issues occur together, represent a greater risk than when the issues occur independently. A group of such issues is referred to as a toxic combination. This field cannot be updated. Its value is ignored in all update requests.
  *   `sourceProperties` (*type:* `map()`, *default:* `nil`) - Source specific properties. These properties are managed by the source that writes the finding. The key names in the source_properties map must be between 1 and 255 characters, and must start with a letter and contain alphanumeric characters or underscores only.
  *   `backupDisasterRecovery` (*type:* `GoogleApi.SecurityCenter.V1.Model.BackupDisasterRecovery.t`, *default:* `nil`) - Fields related to Backup and DR findings.
  *   `compliances` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Compliance.t)`, *default:* `nil`) - Contains compliance information for security standards associated to the finding.
  *   `securityPosture` (*type:* `GoogleApi.SecurityCenter.V1.Model.SecurityPosture.t`, *default:* `nil`) - The security posture associated with the finding.
  *   `application` (*type:* `GoogleApi.SecurityCenter.V1.Model.Application.t`, *default:* `nil`) - Represents an application associated with the finding.
  *   `files` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.File.t)`, *default:* `nil`) - File associated with the finding.
  *   `iamBindings` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.IamBinding.t)`, *default:* `nil`) - Represents IAM bindings associated with the finding.
  *   `affectedResources` (*type:* `GoogleApi.SecurityCenter.V1.Model.AffectedResources.t`, *default:* `nil`) - AffectedResources associated with the finding.
  *   `containers` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Container.t)`, *default:* `nil`) - Containers associated with the finding. This field provides information for both Kubernetes and non-Kubernetes containers.
  *   `externalUri` (*type:* `String.t`, *default:* `nil`) - The URI that, if available, points to a web page outside of Security Command Center where additional information about the finding can be found. This field is guaranteed to be either empty or a well formed URL.
  *   `securityMarks` (*type:* `GoogleApi.SecurityCenter.V1.Model.SecurityMarks.t`, *default:* `nil`) - Output only. User specified security marks. These marks are entirely managed by the user and come from the SecurityMarks resource that belongs to the finding.
  *   `muteInitiator` (*type:* `String.t`, *default:* `nil`) - Records additional information about the mute operation, for example, the [mute configuration](/security-command-center/docs/how-to-mute-findings) that muted the finding and the user who muted the finding.
  *   `connections` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Connection.t)`, *default:* `nil`) - Contains information about the IP connection associated with the finding.
  *   `externalSystems` (*type:* `%{optional(String.t) => GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExternalSystem.t}`, *default:* `nil`) - Output only. Third party SIEM/SOAR fields within SCC, contains external system information and external system finding fields.
  *   `loadBalancers` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.LoadBalancer.t)`, *default:* `nil`) - The load balancers associated with the finding.
  *   `kernelRootkit` (*type:* `GoogleApi.SecurityCenter.V1.Model.KernelRootkit.t`, *default:* `nil`) - Signature of the kernel rootkit.
  *   `processes` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Process.t)`, *default:* `nil`) - Represents operating system processes associated with the Finding.
  *   `logEntries` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.LogEntry.t)`, *default:* `nil`) - Log entries that are relevant to the finding.
  *   `cloudArmor` (*type:* `GoogleApi.SecurityCenter.V1.Model.CloudArmor.t`, *default:* `nil`) - Fields related to Cloud Armor findings.
  *   `networks` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.Network.t)`, *default:* `nil`) - Represents the VPC networks that the resource is attached to.
  *   `disk` (*type:* `GoogleApi.SecurityCenter.V1.Model.Disk.t`, *default:* `nil`) - Disk associated with the finding.
  *   `job` (*type:* `GoogleApi.SecurityCenter.V1.Model.Job.t`, *default:* `nil`) - Job associated with the finding.
  *   `access` (*type:* `GoogleApi.SecurityCenter.V1.Model.Access.t`, *default:* `nil`) - Access details associated with the finding, such as more information on the caller, which method was accessed, and from where.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - For findings on Google Cloud resources, the full resource name of the Google Cloud resource this finding is for. See: https://cloud.google.com/apis/design/resource_names#full_resource_name When the finding is for a non-Google Cloud resource, the resourceName can be a customer or partner defined string. This field is immutable after creation time.
  *   `mitreAttack` (*type:* `GoogleApi.SecurityCenter.V1.Model.MitreAttack.t`, *default:* `nil`) - MITRE ATT&CK tactics and techniques related to this finding. See: https://attack.mitre.org
  *   `category` (*type:* `String.t`, *default:* `nil`) - The additional taxonomy group within findings from a given source. This field is immutable after creation time. Example: "XSS_FLASH_INJECTION"
  *   `exfiltration` (*type:* `GoogleApi.SecurityCenter.V1.Model.Exfiltration.t`, *default:* `nil`) - Represents exfiltrations associated with the finding.
  *   `findingClass` (*type:* `String.t`, *default:* `nil`) - The class of the finding.
  *   `eventTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the finding was first detected. If an existing finding is updated, then this is the time the update occurred. For example, if the finding represents an open firewall, this property captures the time the detector believes the firewall became open. The accuracy is determined by the detector. If the finding is later resolved, then this time reflects when the finding was resolved. This must not be set to a value greater than the current timestamp.
  *   `dataAccessEvents` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.DataAccessEvent.t)`, *default:* `nil`) - Data access events associated with the finding.
  *   `canonicalName` (*type:* `String.t`, *default:* `nil`) - The canonical name of the finding. It's either "organizations/{organization_id}/sources/{source_id}/findings/{finding_id}", "folders/{folder_id}/sources/{source_id}/findings/{finding_id}" or "projects/{project_number}/sources/{source_id}/findings/{finding_id}", depending on the closest CRM ancestor of the resource associated with the finding.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The relative resource name of the source the finding belongs to. See: https://cloud.google.com/apis/design/resource_names#relative_resource_name This field is immutable after creation time. For example: "organizations/{organization_id}/sources/{source_id}"
  *   `muteUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The most recent time this finding was muted or unmuted.
  *   `parentDisplayName` (*type:* `String.t`, *default:* `nil`) - Output only. The human readable display name of the finding source such as "Event Threat Detection" or "Security Health Analytics".
  *   `contacts` (*type:* `%{optional(String.t) => GoogleApi.SecurityCenter.V1.Model.ContactDetails.t}`, *default:* `nil`) - Output only. Map containing the points of contact for the given finding. The key represents the type of contact, while the value contains a list of all the contacts that pertain. Please refer to: https://cloud.google.com/resource-manager/docs/managing-notification-contacts#notification-categories { "security": { "contacts": [ { "email": "person1@company.com" }, { "email": "person2@company.com" } ] } }
  *   `cloudDlpInspection` (*type:* `GoogleApi.SecurityCenter.V1.Model.CloudDlpInspection.t`, *default:* `nil`) - Cloud Data Loss Prevention (Cloud DLP) inspection results that are associated with the finding.
  *   `indicator` (*type:* `GoogleApi.SecurityCenter.V1.Model.Indicator.t`, *default:* `nil`) - Represents what's commonly known as an *indicator of compromise* (IoC) in computer forensics. This is an artifact observed on a network or in an operating system that, with high confidence, indicates a computer intrusion. For more information, see [Indicator of compromise](https://en.wikipedia.org/wiki/Indicator_of_compromise).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextSteps => String.t() | nil,
          :attackExposure => GoogleApi.SecurityCenter.V1.Model.AttackExposure.t() | nil,
          :groupMemberships => list(GoogleApi.SecurityCenter.V1.Model.GroupMembership.t()) | nil,
          :createTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :chokepoint => GoogleApi.SecurityCenter.V1.Model.Chokepoint.t() | nil,
          :orgPolicies => list(GoogleApi.SecurityCenter.V1.Model.OrgPolicy.t()) | nil,
          :database => GoogleApi.SecurityCenter.V1.Model.Database.t() | nil,
          :name => String.t() | nil,
          :dataFlowEvents => list(GoogleApi.SecurityCenter.V1.Model.DataFlowEvent.t()) | nil,
          :vulnerability => GoogleApi.SecurityCenter.V1.Model.Vulnerability.t() | nil,
          :ipRules => GoogleApi.SecurityCenter.V1.Model.IpRules.t() | nil,
          :mute => String.t() | nil,
          :moduleName => String.t() | nil,
          :dataRetentionDeletionEvents =>
            list(GoogleApi.SecurityCenter.V1.Model.DataRetentionDeletionEvent.t()) | nil,
          :description => String.t() | nil,
          :notebook => GoogleApi.SecurityCenter.V1.Model.Notebook.t() | nil,
          :cloudDlpDataProfile => GoogleApi.SecurityCenter.V1.Model.CloudDlpDataProfile.t() | nil,
          :severity => String.t() | nil,
          :muteInfo => GoogleApi.SecurityCenter.V1.Model.MuteInfo.t() | nil,
          :kubernetes => GoogleApi.SecurityCenter.V1.Model.Kubernetes.t() | nil,
          :toxicCombination => GoogleApi.SecurityCenter.V1.Model.ToxicCombination.t() | nil,
          :sourceProperties => map() | nil,
          :backupDisasterRecovery =>
            GoogleApi.SecurityCenter.V1.Model.BackupDisasterRecovery.t() | nil,
          :compliances => list(GoogleApi.SecurityCenter.V1.Model.Compliance.t()) | nil,
          :securityPosture => GoogleApi.SecurityCenter.V1.Model.SecurityPosture.t() | nil,
          :application => GoogleApi.SecurityCenter.V1.Model.Application.t() | nil,
          :files => list(GoogleApi.SecurityCenter.V1.Model.File.t()) | nil,
          :iamBindings => list(GoogleApi.SecurityCenter.V1.Model.IamBinding.t()) | nil,
          :affectedResources => GoogleApi.SecurityCenter.V1.Model.AffectedResources.t() | nil,
          :containers => list(GoogleApi.SecurityCenter.V1.Model.Container.t()) | nil,
          :externalUri => String.t() | nil,
          :securityMarks => GoogleApi.SecurityCenter.V1.Model.SecurityMarks.t() | nil,
          :muteInitiator => String.t() | nil,
          :connections => list(GoogleApi.SecurityCenter.V1.Model.Connection.t()) | nil,
          :externalSystems =>
            %{
              optional(String.t()) =>
                GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExternalSystem.t()
            }
            | nil,
          :loadBalancers => list(GoogleApi.SecurityCenter.V1.Model.LoadBalancer.t()) | nil,
          :kernelRootkit => GoogleApi.SecurityCenter.V1.Model.KernelRootkit.t() | nil,
          :processes => list(GoogleApi.SecurityCenter.V1.Model.Process.t()) | nil,
          :logEntries => list(GoogleApi.SecurityCenter.V1.Model.LogEntry.t()) | nil,
          :cloudArmor => GoogleApi.SecurityCenter.V1.Model.CloudArmor.t() | nil,
          :networks => list(GoogleApi.SecurityCenter.V1.Model.Network.t()) | nil,
          :disk => GoogleApi.SecurityCenter.V1.Model.Disk.t() | nil,
          :job => GoogleApi.SecurityCenter.V1.Model.Job.t() | nil,
          :access => GoogleApi.SecurityCenter.V1.Model.Access.t() | nil,
          :resourceName => String.t() | nil,
          :mitreAttack => GoogleApi.SecurityCenter.V1.Model.MitreAttack.t() | nil,
          :category => String.t() | nil,
          :exfiltration => GoogleApi.SecurityCenter.V1.Model.Exfiltration.t() | nil,
          :findingClass => String.t() | nil,
          :eventTime => DateTime.t() | nil,
          :dataAccessEvents => list(GoogleApi.SecurityCenter.V1.Model.DataAccessEvent.t()) | nil,
          :canonicalName => String.t() | nil,
          :parent => String.t() | nil,
          :muteUpdateTime => DateTime.t() | nil,
          :parentDisplayName => String.t() | nil,
          :contacts =>
            %{optional(String.t()) => GoogleApi.SecurityCenter.V1.Model.ContactDetails.t()} | nil,
          :cloudDlpInspection => GoogleApi.SecurityCenter.V1.Model.CloudDlpInspection.t() | nil,
          :indicator => GoogleApi.SecurityCenter.V1.Model.Indicator.t() | nil
        }

  field(:nextSteps)
  field(:attackExposure, as: GoogleApi.SecurityCenter.V1.Model.AttackExposure)
  field(:groupMemberships, as: GoogleApi.SecurityCenter.V1.Model.GroupMembership, type: :list)
  field(:createTime, as: DateTime)
  field(:state)
  field(:chokepoint, as: GoogleApi.SecurityCenter.V1.Model.Chokepoint)
  field(:orgPolicies, as: GoogleApi.SecurityCenter.V1.Model.OrgPolicy, type: :list)
  field(:database, as: GoogleApi.SecurityCenter.V1.Model.Database)
  field(:name)
  field(:dataFlowEvents, as: GoogleApi.SecurityCenter.V1.Model.DataFlowEvent, type: :list)
  field(:vulnerability, as: GoogleApi.SecurityCenter.V1.Model.Vulnerability)
  field(:ipRules, as: GoogleApi.SecurityCenter.V1.Model.IpRules)
  field(:mute)
  field(:moduleName)

  field(:dataRetentionDeletionEvents,
    as: GoogleApi.SecurityCenter.V1.Model.DataRetentionDeletionEvent,
    type: :list
  )

  field(:description)
  field(:notebook, as: GoogleApi.SecurityCenter.V1.Model.Notebook)
  field(:cloudDlpDataProfile, as: GoogleApi.SecurityCenter.V1.Model.CloudDlpDataProfile)
  field(:severity)
  field(:muteInfo, as: GoogleApi.SecurityCenter.V1.Model.MuteInfo)
  field(:kubernetes, as: GoogleApi.SecurityCenter.V1.Model.Kubernetes)
  field(:toxicCombination, as: GoogleApi.SecurityCenter.V1.Model.ToxicCombination)
  field(:sourceProperties, type: :map)
  field(:backupDisasterRecovery, as: GoogleApi.SecurityCenter.V1.Model.BackupDisasterRecovery)
  field(:compliances, as: GoogleApi.SecurityCenter.V1.Model.Compliance, type: :list)
  field(:securityPosture, as: GoogleApi.SecurityCenter.V1.Model.SecurityPosture)
  field(:application, as: GoogleApi.SecurityCenter.V1.Model.Application)
  field(:files, as: GoogleApi.SecurityCenter.V1.Model.File, type: :list)
  field(:iamBindings, as: GoogleApi.SecurityCenter.V1.Model.IamBinding, type: :list)
  field(:affectedResources, as: GoogleApi.SecurityCenter.V1.Model.AffectedResources)
  field(:containers, as: GoogleApi.SecurityCenter.V1.Model.Container, type: :list)
  field(:externalUri)
  field(:securityMarks, as: GoogleApi.SecurityCenter.V1.Model.SecurityMarks)
  field(:muteInitiator)
  field(:connections, as: GoogleApi.SecurityCenter.V1.Model.Connection, type: :list)

  field(:externalSystems,
    as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1ExternalSystem,
    type: :map
  )

  field(:loadBalancers, as: GoogleApi.SecurityCenter.V1.Model.LoadBalancer, type: :list)
  field(:kernelRootkit, as: GoogleApi.SecurityCenter.V1.Model.KernelRootkit)
  field(:processes, as: GoogleApi.SecurityCenter.V1.Model.Process, type: :list)
  field(:logEntries, as: GoogleApi.SecurityCenter.V1.Model.LogEntry, type: :list)
  field(:cloudArmor, as: GoogleApi.SecurityCenter.V1.Model.CloudArmor)
  field(:networks, as: GoogleApi.SecurityCenter.V1.Model.Network, type: :list)
  field(:disk, as: GoogleApi.SecurityCenter.V1.Model.Disk)
  field(:job, as: GoogleApi.SecurityCenter.V1.Model.Job)
  field(:access, as: GoogleApi.SecurityCenter.V1.Model.Access)
  field(:resourceName)
  field(:mitreAttack, as: GoogleApi.SecurityCenter.V1.Model.MitreAttack)
  field(:category)
  field(:exfiltration, as: GoogleApi.SecurityCenter.V1.Model.Exfiltration)
  field(:findingClass)
  field(:eventTime, as: DateTime)
  field(:dataAccessEvents, as: GoogleApi.SecurityCenter.V1.Model.DataAccessEvent, type: :list)
  field(:canonicalName)
  field(:parent)
  field(:muteUpdateTime, as: DateTime)
  field(:parentDisplayName)
  field(:contacts, as: GoogleApi.SecurityCenter.V1.Model.ContactDetails, type: :map)
  field(:cloudDlpInspection, as: GoogleApi.SecurityCenter.V1.Model.CloudDlpInspection)
  field(:indicator, as: GoogleApi.SecurityCenter.V1.Model.Indicator)
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
