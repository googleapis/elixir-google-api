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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRelationRelationDetails do
  @moduledoc """


  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Equivalent to Name.display_name for the person_id profile.
  *   `jobTitle` (*type:* `String.t`, *default:* `nil`) - Equivalent to Organization.title for the primary organization of the person_id profile.
  *   `personId` (*type:* `String.t`, *default:* `nil`) - 
  *   `photoUrl` (*type:* `String.t`, *default:* `nil`) - Equivalent to Photo.url for the person_id profile.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :jobTitle => String.t() | nil,
          :personId => String.t() | nil,
          :photoUrl => String.t() | nil
        }

  field(:displayName)
  field(:jobTitle)
  field(:personId)
  field(:photoUrl)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRelationRelationDetails do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRelationRelationDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiRelationRelationDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
