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

defmodule GoogleApi.StreetViewPublish.V1.Model.BatchUpdatePhotosRequest do
  @moduledoc """
  Request to update the metadata of photos. Updating the pixels of photos is not supported.

  ## Attributes

  *   `updatePhotoRequests` (*type:* `list(GoogleApi.StreetViewPublish.V1.Model.UpdatePhotoRequest.t)`, *default:* `nil`) - Required. List of UpdatePhotoRequests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :updatePhotoRequests =>
            list(GoogleApi.StreetViewPublish.V1.Model.UpdatePhotoRequest.t())
        }

  field(:updatePhotoRequests,
    as: GoogleApi.StreetViewPublish.V1.Model.UpdatePhotoRequest,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.BatchUpdatePhotosRequest do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.BatchUpdatePhotosRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.BatchUpdatePhotosRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
