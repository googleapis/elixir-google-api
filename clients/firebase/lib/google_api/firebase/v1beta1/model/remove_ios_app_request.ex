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

defmodule GoogleApi.Firebase.V1beta1.Model.RemoveIosAppRequest do
  @moduledoc """


  ## Attributes

  *   `allowMissing` (*type:* `boolean()`, *default:* `nil`) - If set to true, and the App is not found, the request will succeed but no action will be taken on the server.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Checksum provided in the IosApp resource. If provided, this checksum ensures that the client has an up-to-date value before proceeding.
  *   `immediate` (*type:* `boolean()`, *default:* `nil`) - Determines whether to _immediately_ delete the IosApp. If set to true, the App is immediately deleted from the Project and cannot be undeleted (that is, restored to the Project). If not set, defaults to false, which means the App will be set to expire in 30 days. Within the 30 days, the App may be restored to the Project using UndeleteIosApp
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - If set to true, the request is only validated. The App will _not_ be removed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowMissing => boolean() | nil,
          :etag => String.t() | nil,
          :immediate => boolean() | nil,
          :validateOnly => boolean() | nil
        }

  field(:allowMissing)
  field(:etag)
  field(:immediate)
  field(:validateOnly)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.RemoveIosAppRequest do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.RemoveIosAppRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.RemoveIosAppRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
