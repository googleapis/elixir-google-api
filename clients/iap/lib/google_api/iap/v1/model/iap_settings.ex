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

defmodule GoogleApi.IAP.V1.Model.IapSettings do
  @moduledoc """
  The IAP configurable settings.

  ## Attributes

  *   `accessSettings` (*type:* `GoogleApi.IAP.V1.Model.AccessSettings.t`, *default:* `nil`) - Optional. Top level wrapper for all access related setting in IAP
  *   `applicationSettings` (*type:* `GoogleApi.IAP.V1.Model.ApplicationSettings.t`, *default:* `nil`) - Optional. Top level wrapper for all application related settings in IAP
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the IAP protected resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessSettings => GoogleApi.IAP.V1.Model.AccessSettings.t() | nil,
          :applicationSettings => GoogleApi.IAP.V1.Model.ApplicationSettings.t() | nil,
          :name => String.t() | nil
        }

  field(:accessSettings, as: GoogleApi.IAP.V1.Model.AccessSettings)
  field(:applicationSettings, as: GoogleApi.IAP.V1.Model.ApplicationSettings)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.IAP.V1.Model.IapSettings do
  def decode(value, options) do
    GoogleApi.IAP.V1.Model.IapSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAP.V1.Model.IapSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
