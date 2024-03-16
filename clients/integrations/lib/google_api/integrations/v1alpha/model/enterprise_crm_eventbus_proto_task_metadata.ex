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

defmodule GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskMetadata do
  @moduledoc """
  TaskMetadata are attributes that are associated to every common Task we have.

  ## Attributes

  *   `activeTaskName` (*type:* `String.t`, *default:* `nil`) - The new task name to replace the current task if it is deprecated. Otherwise, it is the same as the current task name.
  *   `admins` (*type:* `list(GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskMetadataAdmin.t)`, *default:* `nil`) - 
  *   `category` (*type:* `String.t`, *default:* `nil`) - 
  *   `codeSearchLink` (*type:* `String.t`, *default:* `nil`) - The Code Search link to the Task Java file.
  *   `defaultJsonValidationOption` (*type:* `String.t`, *default:* `nil`) - Controls whether JSON workflow parameters are validated against provided schemas before and/or after this task's execution.
  *   `defaultSpec` (*type:* `String.t`, *default:* `nil`) - Contains the initial configuration of the task with default values set. For now, The string should be compatible to an ASCII-proto format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - In a few sentences, describe the purpose and usage of the task.
  *   `descriptiveName` (*type:* `String.t`, *default:* `nil`) - The string name to show on the task list on the Workflow editor screen. This should be a very short, one to two words name for the task. (e.g. "Send Mail")
  *   `docMarkdown` (*type:* `String.t`, *default:* `nil`) - Snippet of markdown documentation to embed in the RHP for this task.
  *   `externalCategory` (*type:* `String.t`, *default:* `nil`) - 
  *   `externalCategorySequence` (*type:* `integer()`, *default:* `nil`) - Sequence with which the task in specific category to be displayed in task discovery panel for external users.
  *   `externalDocHtml` (*type:* `String.t`, *default:* `nil`) - External-facing documention embedded in the RHP for this task.
  *   `externalDocLink` (*type:* `String.t`, *default:* `nil`) - Doc link for external-facing documentation (separate from g3doc).
  *   `externalDocMarkdown` (*type:* `String.t`, *default:* `nil`) - DEPRECATED: Use external_doc_html.
  *   `g3DocLink` (*type:* `String.t`, *default:* `nil`) - URL to the associated G3 Doc for the task if available
  *   `iconLink` (*type:* `String.t`, *default:* `nil`) - URL to gstatic image icon for this task. This icon shows up on the task list panel along with the task name in the Workflow Editor screen. Use the 24p, 2x, gray color icon image format.
  *   `isDeprecated` (*type:* `boolean()`, *default:* `nil`) - The deprecation status of the current task. Default value is false;
  *   `name` (*type:* `String.t`, *default:* `nil`) - The actual class name or the annotated name of the task. Task Author should initialize this field with value from the getName() method of the Task class.
  *   `standaloneExternalDocHtml` (*type:* `String.t`, *default:* `nil`) - External-facing documention for standalone IP in pantheon embedded in the RHP for this task. Non null only if different from external_doc_html
  *   `status` (*type:* `String.t`, *default:* `nil`) - Allows author to indicate if the task is ready to use or not. If not set, then it will default to INACTIVE.
  *   `system` (*type:* `String.t`, *default:* `nil`) - 
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - A set of tags that pertain to a particular task. This can be used to improve the searchability of tasks with several names ("REST Caller" vs. "Call REST Endpoint") or to help users find tasks based on related words.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeTaskName => String.t() | nil,
          :admins =>
            list(
              GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskMetadataAdmin.t()
            )
            | nil,
          :category => String.t() | nil,
          :codeSearchLink => String.t() | nil,
          :defaultJsonValidationOption => String.t() | nil,
          :defaultSpec => String.t() | nil,
          :description => String.t() | nil,
          :descriptiveName => String.t() | nil,
          :docMarkdown => String.t() | nil,
          :externalCategory => String.t() | nil,
          :externalCategorySequence => integer() | nil,
          :externalDocHtml => String.t() | nil,
          :externalDocLink => String.t() | nil,
          :externalDocMarkdown => String.t() | nil,
          :g3DocLink => String.t() | nil,
          :iconLink => String.t() | nil,
          :isDeprecated => boolean() | nil,
          :name => String.t() | nil,
          :standaloneExternalDocHtml => String.t() | nil,
          :status => String.t() | nil,
          :system => String.t() | nil,
          :tags => list(String.t()) | nil
        }

  field(:activeTaskName)

  field(:admins,
    as: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskMetadataAdmin,
    type: :list
  )

  field(:category)
  field(:codeSearchLink)
  field(:defaultJsonValidationOption)
  field(:defaultSpec)
  field(:description)
  field(:descriptiveName)
  field(:docMarkdown)
  field(:externalCategory)
  field(:externalCategorySequence)
  field(:externalDocHtml)
  field(:externalDocLink)
  field(:externalDocMarkdown)
  field(:g3DocLink)
  field(:iconLink)
  field(:isDeprecated)
  field(:name)
  field(:standaloneExternalDocHtml)
  field(:status)
  field(:system)
  field(:tags, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskMetadata do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.EnterpriseCrmEventbusProtoTaskMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end