# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Plus.V1.Model.ActivityActor do
  @moduledoc """
  The person who performed this activity.

  ## Attributes

  - clientSpecificActorInfo (ActivityActorClientSpecificActorInfo):  Defaults to: `null`.
  - displayName (String.t): The name of the actor, suitable for display. Defaults to: `null`.
  - id (String.t): The ID of the actor&#39;s Person resource. Defaults to: `null`.
  - image (ActivityActorImage):  Defaults to: `null`.
  - name (ActivityActorName):  Defaults to: `null`.
  - url (String.t): The link to the actor&#39;s Google profile. Defaults to: `null`.
  - verification (ActivityActorVerification):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientSpecificActorInfo =>
            GoogleApi.Plus.V1.Model.ActivityActorClientSpecificActorInfo.t(),
          :displayName => any(),
          :id => any(),
          :image => GoogleApi.Plus.V1.Model.ActivityActorImage.t(),
          :name => GoogleApi.Plus.V1.Model.ActivityActorName.t(),
          :url => any(),
          :verification => GoogleApi.Plus.V1.Model.ActivityActorVerification.t()
        }

  field(
    :clientSpecificActorInfo,
    as: GoogleApi.Plus.V1.Model.ActivityActorClientSpecificActorInfo
  )

  field(:displayName)
  field(:id)
  field(:image, as: GoogleApi.Plus.V1.Model.ActivityActorImage)
  field(:name, as: GoogleApi.Plus.V1.Model.ActivityActorName)
  field(:url)
  field(:verification, as: GoogleApi.Plus.V1.Model.ActivityActorVerification)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.ActivityActor do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.ActivityActor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.ActivityActor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
