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

defmodule GoogleApi.AndroidEnterprise.V1.Model.AppUpdateEvent do
  @moduledoc """
  An event generated when a new version of an app is uploaded to Google Play. Notifications are sent for new public versions only: alpha, beta, or canary versions do not generate this event. To fetch up-to-date version history for an app, use Products.Get on the EMM API.

  ## Attributes

  *   `productId` (*type:* `String.t`, *default:* `nil`) - The id of the product (e.g. "app:com.google.android.gm") that was updated. This field will always be present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :productId => String.t() | nil
        }

  field(:productId)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.AppUpdateEvent do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.AppUpdateEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.AppUpdateEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
