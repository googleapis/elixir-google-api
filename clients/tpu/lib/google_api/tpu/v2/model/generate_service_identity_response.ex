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

defmodule GoogleApi.TPU.V2.Model.GenerateServiceIdentityResponse do
  @moduledoc """
  Response for GenerateServiceIdentity.

  ## Attributes

  *   `identity` (*type:* `GoogleApi.TPU.V2.Model.ServiceIdentity.t`, *default:* `nil`) - ServiceIdentity that was created or retrieved.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :identity => GoogleApi.TPU.V2.Model.ServiceIdentity.t() | nil
        }

  field(:identity, as: GoogleApi.TPU.V2.Model.ServiceIdentity)
end

defimpl Poison.Decoder, for: GoogleApi.TPU.V2.Model.GenerateServiceIdentityResponse do
  def decode(value, options) do
    GoogleApi.TPU.V2.Model.GenerateServiceIdentityResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TPU.V2.Model.GenerateServiceIdentityResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
