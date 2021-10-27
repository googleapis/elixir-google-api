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

defmodule GoogleApi.Firebase.V1beta1.Model.AnalyticsProperty do
  @moduledoc """
  Details of a Google Analytics property

  ## Attributes

  *   `analyticsAccountId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the [Google Analytics account](https://www.google.com/analytics/) for the Google Analytics property associated with the specified FirebaseProject.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the Google Analytics property associated with the specified `FirebaseProject`.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The globally unique, Google-assigned identifier of the Google Analytics property associated with the specified `FirebaseProject`. If you called [`AddGoogleAnalytics`](../../v1beta1/projects/addGoogleAnalytics) to link the `FirebaseProject` with a Google Analytics account, the value in this `id` field is the same as the ID of the property either specified or provisioned with that call to `AddGoogleAnalytics`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analyticsAccountId => String.t() | nil,
          :displayName => String.t() | nil,
          :id => String.t() | nil
        }

  field(:analyticsAccountId)
  field(:displayName)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.AnalyticsProperty do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.AnalyticsProperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.AnalyticsProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
