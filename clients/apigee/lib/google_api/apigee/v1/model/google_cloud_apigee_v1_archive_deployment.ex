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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ArchiveDeployment do
  @moduledoc """
  Archive Deployment information.

  ## Attributes

  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. The time at which the Archive Deployment was created in milliseconds since the epoch.
  *   `gcsUri` (*type:* `String.t`, *default:* `nil`) - Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to upload the Archive zip file.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.
  *   `operation` (*type:* `String.t`, *default:* `nil`) - Output only. A reference to the LRO that created this Archive Deployment in the following format: `organizations/{org}/operations/{id}`
  *   `updatedAt` (*type:* `String.t`, *default:* `nil`) - Output only. The time at which the Archive Deployment was updated in milliseconds since the epoch.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdAt => String.t() | nil,
          :gcsUri => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :operation => String.t() | nil,
          :updatedAt => String.t() | nil
        }

  field(:createdAt)
  field(:gcsUri)
  field(:labels, type: :map)
  field(:name)
  field(:operation)
  field(:updatedAt)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ArchiveDeployment do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ArchiveDeployment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ArchiveDeployment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
