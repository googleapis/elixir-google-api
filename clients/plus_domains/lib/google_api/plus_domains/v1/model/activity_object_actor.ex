# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.PlusDomains.V1.Model.ActivityObjectActor do
  @moduledoc """
  If this activity's object is itself another activity, such as when a person reshares an activity, this property specifies the original activity's actor.

  ## Attributes

  *   `clientSpecificActorInfo` (*type:* `GoogleApi.PlusDomains.V1.Model.ActivityObjectActorClientSpecificActorInfo.t`, *default:* `nil`) - Actor info specific to particular clients.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The original actor's name, which is suitable for display.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of the original actor.
  *   `image` (*type:* `GoogleApi.PlusDomains.V1.Model.ActivityObjectActorImage.t`, *default:* `nil`) - The image representation of the original actor.
  *   `url` (*type:* `String.t`, *default:* `nil`) - A link to the original actor's Google profile.
  *   `verification` (*type:* `GoogleApi.PlusDomains.V1.Model.ActivityObjectActorVerification.t`, *default:* `nil`) - Verification status of actor.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientSpecificActorInfo =>
            GoogleApi.PlusDomains.V1.Model.ActivityObjectActorClientSpecificActorInfo.t(),
          :displayName => String.t(),
          :id => String.t(),
          :image => GoogleApi.PlusDomains.V1.Model.ActivityObjectActorImage.t(),
          :url => String.t(),
          :verification => GoogleApi.PlusDomains.V1.Model.ActivityObjectActorVerification.t()
        }

  field(
    :clientSpecificActorInfo,
    as: GoogleApi.PlusDomains.V1.Model.ActivityObjectActorClientSpecificActorInfo
  )

  field(:displayName)
  field(:id)
  field(:image, as: GoogleApi.PlusDomains.V1.Model.ActivityObjectActorImage)
  field(:url)
  field(:verification, as: GoogleApi.PlusDomains.V1.Model.ActivityObjectActorVerification)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.ActivityObjectActor do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.ActivityObjectActor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.ActivityObjectActor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
