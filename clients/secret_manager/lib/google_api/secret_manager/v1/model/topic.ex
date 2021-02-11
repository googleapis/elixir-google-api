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

defmodule GoogleApi.SecretManager.V1.Model.Topic do
  @moduledoc """
  A Pub/Sub topic which SM will publish to when control plane events occur on this secret.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the Pub/Sub topic that will be published to, in the following format: `projects/*/topics/*`. For publication to succeed, the Secret Manager P4SA must have `pubsub.publisher` permissions on the topic.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t()
        }

  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.SecretManager.V1.Model.Topic do
  def decode(value, options) do
    GoogleApi.SecretManager.V1.Model.Topic.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecretManager.V1.Model.Topic do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
