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

defmodule GoogleApi.AndroidEnterprise.V1.Model.ServiceAccountKey do
  @moduledoc """
   *Deprecated:* New integrations cannot use this method and can refer to our new recommendations 

  ## Attributes

  *   `data` (*type:* `String.t`, *default:* `nil`) - The body of the private key credentials file, in string format. This is only populated when the ServiceAccountKey is created, and is not stored by Google.
  *   `id` (*type:* `String.t`, *default:* `nil`) - An opaque, unique identifier for this ServiceAccountKey. Assigned by the server.
  *   `publicData` (*type:* `String.t`, *default:* `nil`) - Public key data for the credentials file. This is an X.509 cert. If you are using the googleCredentials key type, this is identical to the cert that can be retrieved by using the X.509 cert url inside of the credentials file.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The file format of the generated key data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => String.t() | nil,
          :id => String.t() | nil,
          :publicData => String.t() | nil,
          :type => String.t() | nil
        }

  field(:data)
  field(:id)
  field(:publicData)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.ServiceAccountKey do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.ServiceAccountKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.ServiceAccountKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
