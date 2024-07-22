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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2ResourceValueConfig do
  @moduledoc """
  A resource value configuration (RVC) is a mapping configuration of user's resources to resource values. Used in Attack path simulations.

  ## Attributes

  *   `cloudProvider` (*type:* `String.t`, *default:* `nil`) - Cloud provider this configuration applies to
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp this resource value configuration was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the resource value configuration.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name for the resource value configuration
  *   `resourceLabelsSelector` (*type:* `map()`, *default:* `nil`) - List of resource labels to search for, evaluated with `AND`. For example, "resource_labels_selector": {"key": "value", "env": "prod"} will match resources with labels "key": "value" `AND` "env": "prod" https://cloud.google.com/resource-manager/docs/creating-managing-labels
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - Apply resource_value only to resources that match resource_type. resource_type will be checked with `AND` of other resources. For example, "storage.googleapis.com/Bucket" with resource_value "HIGH" will apply "HIGH" value only to "storage.googleapis.com/Bucket" resources.
  *   `resourceValue` (*type:* `String.t`, *default:* `nil`) - Resource value level this expression represents Only required when there is no SDP mapping in the request
  *   `scope` (*type:* `String.t`, *default:* `nil`) - Project or folder to scope this configuration to. For example, "project/456" would apply this configuration only to resources in "project/456" scope will be checked with `AND` of other resources.
  *   `sensitiveDataProtectionMapping` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping.t`, *default:* `nil`) - A mapping of the sensitivity on Sensitive Data Protection finding to resource values. This mapping can only be used in combination with a resource_type that is related to BigQuery, e.g. "bigquery.googleapis.com/Dataset".
  *   `tagValues` (*type:* `list(String.t)`, *default:* `nil`) - Required. Tag values combined with `AND` to check against. Values in the form "tagValues/123" Example: `[ "tagValues/123", "tagValues/456", "tagValues/789" ]` https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp this resource value configuration was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudProvider => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :name => String.t() | nil,
          :resourceLabelsSelector => map() | nil,
          :resourceType => String.t() | nil,
          :resourceValue => String.t() | nil,
          :scope => String.t() | nil,
          :sensitiveDataProtectionMapping =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping.t()
            | nil,
          :tagValues => list(String.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:cloudProvider)
  field(:createTime, as: DateTime)
  field(:description)
  field(:name)
  field(:resourceLabelsSelector, type: :map)
  field(:resourceType)
  field(:resourceValue)
  field(:scope)

  field(:sensitiveDataProtectionMapping,
    as:
      GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2SensitiveDataProtectionMapping
  )

  field(:tagValues, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2ResourceValueConfig do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2ResourceValueConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2ResourceValueConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
