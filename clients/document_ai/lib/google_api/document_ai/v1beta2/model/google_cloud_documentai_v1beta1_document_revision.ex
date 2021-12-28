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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentRevision do
  @moduledoc """
  Contains past or forward revisions of this document.

  ## Attributes

  *   `agent` (*type:* `String.t`, *default:* `nil`) - If the change was made by a person specify the name or id of that person.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time that the revision was created.
  *   `humanReview` (*type:* `GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.t`, *default:* `nil`) - Human Review information of this revision.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Id of the revision. Unique within the context of the document.
  *   `parent` (*type:* `list(integer())`, *default:* `nil`) - The revisions that this revision is based on. This can include one or more parent (when documents are merged.) This field represents the index into the `revisions` field.
  *   `parentIds` (*type:* `list(String.t)`, *default:* `nil`) - The revisions that this revision is based on. Must include all the ids that have anything to do with this revision - eg. there are `provenance.parent.revision` fields that index into this field.
  *   `processor` (*type:* `String.t`, *default:* `nil`) - If the annotation was made by processor identify the processor by its resource name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agent => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :humanReview =>
            GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.t()
            | nil,
          :id => String.t() | nil,
          :parent => list(integer()) | nil,
          :parentIds => list(String.t()) | nil,
          :processor => String.t() | nil
        }

  field(:agent)
  field(:createTime, as: DateTime)

  field(:humanReview,
    as: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
  )

  field(:id)
  field(:parent, type: :list)
  field(:parentIds, type: :list)
  field(:processor)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentRevision do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentRevision.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiV1beta1DocumentRevision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
