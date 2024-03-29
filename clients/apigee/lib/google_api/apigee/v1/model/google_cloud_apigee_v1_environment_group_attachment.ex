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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EnvironmentGroupAttachment do
  @moduledoc """
  EnvironmentGroupAttachment is a resource which defines an attachment of an environment to an environment group.

  ## Attributes

  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. The time at which the environment group attachment was created as milliseconds since epoch.
  *   `environment` (*type:* `String.t`, *default:* `nil`) - Required. ID of the attached environment.
  *   `environmentGroupId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the environment group.
  *   `name` (*type:* `String.t`, *default:* `nil`) - ID of the environment group attachment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdAt => String.t() | nil,
          :environment => String.t() | nil,
          :environmentGroupId => String.t() | nil,
          :name => String.t() | nil
        }

  field(:createdAt)
  field(:environment)
  field(:environmentGroupId)
  field(:name)
end

defimpl Poison.Decoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EnvironmentGroupAttachment do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EnvironmentGroupAttachment.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1EnvironmentGroupAttachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
