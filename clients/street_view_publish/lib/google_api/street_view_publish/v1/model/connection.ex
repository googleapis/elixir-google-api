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

defmodule GoogleApi.StreetViewPublish.V1.Model.Connection do
  @moduledoc """
  A connection is the link from a source photo to a destination photo.

  ## Attributes

  *   `target` (*type:* `GoogleApi.StreetViewPublish.V1.Model.PhotoId.t`, *default:* `nil`) - Required. The destination of the connection from the containing photo to
      another photo.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :target => GoogleApi.StreetViewPublish.V1.Model.PhotoId.t()
        }

  field(:target, as: GoogleApi.StreetViewPublish.V1.Model.PhotoId)
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.Connection do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.Connection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.Connection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
