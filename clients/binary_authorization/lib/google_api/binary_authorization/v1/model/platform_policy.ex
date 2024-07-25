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

defmodule GoogleApi.BinaryAuthorization.V1.Model.PlatformPolicy do
  @moduledoc """
  A Binary Authorization platform policy for deployments on various platforms.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A description comment about the policy.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. Used to prevent updating the policy when another request has updated it since it was retrieved.
  *   `gkePolicy` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.GkePolicy.t`, *default:* `nil`) - Optional. GKE platform-specific policy.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The relative resource name of the Binary Authorization platform policy, in the form of `projects/*/platforms/*/policies/*`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the policy was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :gkePolicy => GoogleApi.BinaryAuthorization.V1.Model.GkePolicy.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:description)
  field(:etag)
  field(:gkePolicy, as: GoogleApi.BinaryAuthorization.V1.Model.GkePolicy)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.PlatformPolicy do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.PlatformPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.PlatformPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
