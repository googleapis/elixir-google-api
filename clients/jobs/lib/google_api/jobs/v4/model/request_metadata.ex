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

defmodule GoogleApi.Jobs.V4.Model.RequestMetadata do
  @moduledoc """
  Meta information related to the job searcher or entity conducting the job search. This information is used to improve the performance of the service.

  ## Attributes

  *   `allowMissingIds` (*type:* `boolean()`, *default:* `nil`) - Only set when any of domain, session_id and user_id isn't available for some reason. It is highly recommended not to set this field and provide accurate domain, session_id and user_id for the best service experience.
  *   `deviceInfo` (*type:* `GoogleApi.Jobs.V4.Model.DeviceInfo.t`, *default:* `nil`) - The type of device used by the job seeker at the time of the call to the service.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - Required if allow_missing_ids is unset or `false`. The client-defined scope or source of the service call, which typically is the domain on which the service has been implemented and is currently being run. For example, if the service is being run by client *Foo, Inc.*, on job board www.foo.com and career site www.bar.com, then this field is set to "foo.com" for use on the job board, and "bar.com" for use on the career site. Note that any improvements to the model for a particular tenant site rely on this field being set correctly to a unique domain. The maximum number of allowed characters is 255.
  *   `sessionId` (*type:* `String.t`, *default:* `nil`) - Required if allow_missing_ids is unset or `false`. A unique session identification string. A session is defined as the duration of an end user's interaction with the service over a certain period. Obfuscate this field for privacy concerns before providing it to the service. Note that any improvements to the model for a particular tenant site rely on this field being set correctly to a unique session ID. The maximum number of allowed characters is 255.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Required if allow_missing_ids is unset or `false`. A unique user identification string, as determined by the client. To have the strongest positive impact on search quality make sure the client-level is unique. Obfuscate this field for privacy concerns before providing it to the service. Note that any improvements to the model for a particular tenant site rely on this field being set correctly to a unique user ID. The maximum number of allowed characters is 255.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowMissingIds => boolean() | nil,
          :deviceInfo => GoogleApi.Jobs.V4.Model.DeviceInfo.t() | nil,
          :domain => String.t() | nil,
          :sessionId => String.t() | nil,
          :userId => String.t() | nil
        }

  field(:allowMissingIds)
  field(:deviceInfo, as: GoogleApi.Jobs.V4.Model.DeviceInfo)
  field(:domain)
  field(:sessionId)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V4.Model.RequestMetadata do
  def decode(value, options) do
    GoogleApi.Jobs.V4.Model.RequestMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V4.Model.RequestMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
