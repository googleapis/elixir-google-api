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

defmodule GoogleApi.AdvisoryNotifications.V1.Model.GoogleCloudAdvisorynotificationsV1Text do
  @moduledoc """
  A text object containing the English text and its localized copies.

  ## Attributes

  *   `enText` (*type:* `String.t`, *default:* `nil`) - The English copy.
  *   `localizationState` (*type:* `String.t`, *default:* `nil`) - Status of the localization.
  *   `localizedText` (*type:* `String.t`, *default:* `nil`) - The requested localized copy (if applicable).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enText => String.t() | nil,
          :localizationState => String.t() | nil,
          :localizedText => String.t() | nil
        }

  field(:enText)
  field(:localizationState)
  field(:localizedText)
end

defimpl Poison.Decoder,
  for: GoogleApi.AdvisoryNotifications.V1.Model.GoogleCloudAdvisorynotificationsV1Text do
  def decode(value, options) do
    GoogleApi.AdvisoryNotifications.V1.Model.GoogleCloudAdvisorynotificationsV1Text.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdvisoryNotifications.V1.Model.GoogleCloudAdvisorynotificationsV1Text do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
