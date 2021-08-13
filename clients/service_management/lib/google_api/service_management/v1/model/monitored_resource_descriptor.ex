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

defmodule GoogleApi.ServiceManagement.V1.Model.MonitoredResourceDescriptor do
  @moduledoc """
  An object that describes the schema of a MonitoredResource object using a type name and a set of labels. For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of `"gce_instance"` and specifies the use of the labels `"instance_id"` and `"zone"` to identify particular VM instances. Different APIs can support different monitored resource types. APIs generally provide a `list` method that returns the monitored resource descriptors used by the API. 

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A detailed description of the monitored resource type that might be used in documentation.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, `"Google Cloud SQL Database"`.
  *   `labels` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.LabelDescriptor.t)`, *default:* `nil`) - Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels `"database_id"` and `"zone"`.
  *   `launchStage` (*type:* `String.t`, *default:* `nil`) - Optional. The launch stage of the monitored resource definition.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. The resource name of the monitored resource descriptor: `"projects/{project_id}/monitoredResourceDescriptors/{type}"` where {type} is the value of the `type` field in this object and {project_id} is a project ID that provides API-specific context for accessing the type. APIs that do not use project information can use the resource name format `"monitoredResourceDescriptors/{type}"`.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The monitored resource type. For example, the type `"cloudsql_database"` represents databases in Google Cloud SQL. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :labels => list(GoogleApi.ServiceManagement.V1.Model.LabelDescriptor.t()) | nil,
          :launchStage => String.t() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:description)
  field(:displayName)
  field(:labels, as: GoogleApi.ServiceManagement.V1.Model.LabelDescriptor, type: :list)
  field(:launchStage)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.MonitoredResourceDescriptor do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.MonitoredResourceDescriptor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.MonitoredResourceDescriptor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
