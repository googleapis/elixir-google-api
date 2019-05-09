# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceManagement.V1.Model.MonitoredResourceDescriptor do
  @moduledoc """
  An object that describes the schema of a MonitoredResource object using a type name and a set of labels.  For example, the monitored resource descriptor for Google Compute Engine VM instances has a type of &#x60;\&quot;gce_instance\&quot;&#x60; and specifies the use of the labels &#x60;\&quot;instance_id\&quot;&#x60; and &#x60;\&quot;zone\&quot;&#x60; to identify particular VM instances.  Different APIs can support different monitored resource types. APIs generally provide a &#x60;list&#x60; method that returns the monitored resource descriptors used by the API.

  ## Attributes

  - description (String.t): Optional. A detailed description of the monitored resource type that might be used in documentation. Defaults to: `null`.
  - displayName (String.t): Optional. A concise name for the monitored resource type that might be displayed in user interfaces. It should be a Title Cased Noun Phrase, without any article or other determiners. For example, &#x60;\&quot;Google Cloud SQL Database\&quot;&#x60;. Defaults to: `null`.
  - labels ([LabelDescriptor]): Required. A set of labels used to describe instances of this monitored resource type. For example, an individual Google Cloud SQL database is identified by values for the labels &#x60;\&quot;database_id\&quot;&#x60; and &#x60;\&quot;zone\&quot;&#x60;. Defaults to: `null`.
  - launchStage (String.t): Optional. The launch stage of the monitored resource definition. Defaults to: `null`.
    - Enum - one of [LAUNCH_STAGE_UNSPECIFIED, EARLY_ACCESS, ALPHA, BETA, GA, DEPRECATED]
  - name (String.t): Optional. The resource name of the monitored resource descriptor: &#x60;\&quot;projects/{project_id}/monitoredResourceDescriptors/{type}\&quot;&#x60; where {type} is the value of the &#x60;type&#x60; field in this object and {project_id} is a project ID that provides API-specific context for accessing the type.  APIs that do not use project information can use the resource name format &#x60;\&quot;monitoredResourceDescriptors/{type}\&quot;&#x60;. Defaults to: `null`.
  - type (String.t): Required. The monitored resource type. For example, the type &#x60;\&quot;cloudsql_database\&quot;&#x60; represents databases in Google Cloud SQL. The maximum length of this value is 256 characters. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => any(),
          :displayName => any(),
          :labels => list(GoogleApi.ServiceManagement.V1.Model.LabelDescriptor.t()),
          :launchStage => any(),
          :name => any(),
          :type => any()
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
