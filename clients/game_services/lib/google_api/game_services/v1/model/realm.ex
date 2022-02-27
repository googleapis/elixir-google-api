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

defmodule GoogleApi.GameServices.V1.Model.Realm do
  @moduledoc """
  A realm resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Human readable description of the realm.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this realm. Each label is a key-value pair.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the realm, in the following form: `projects/{project}/locations/{locationId}/realms/{realmId}`. For example, `projects/my-project/locations/global/realms/my-realm`.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - Required. Time zone where all policies targeting this realm are evaluated. The value of this field must be from the [IANA time zone database](https://www.iana.org/time-zones).
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :timeZone => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:timeZone)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1.Model.Realm do
  def decode(value, options) do
    GoogleApi.GameServices.V1.Model.Realm.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1.Model.Realm do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
