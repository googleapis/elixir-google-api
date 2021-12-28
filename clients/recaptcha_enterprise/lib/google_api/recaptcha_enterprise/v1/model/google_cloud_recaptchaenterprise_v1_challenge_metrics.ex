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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics do
  @moduledoc """
  Metrics related to challenges.

  ## Attributes

  *   `failedCount` (*type:* `String.t`, *default:* `nil`) - Count of submitted challenge solutions that were incorrect or otherwise deemed suspicious such that a subsequent challenge was triggered.
  *   `nocaptchaCount` (*type:* `String.t`, *default:* `nil`) - Count of nocaptchas (successful verification without a challenge) issued.
  *   `pageloadCount` (*type:* `String.t`, *default:* `nil`) - Count of reCAPTCHA checkboxes or badges rendered. This is mostly equivalent to a count of pageloads for pages that include reCAPTCHA.
  *   `passedCount` (*type:* `String.t`, *default:* `nil`) - Count of nocaptchas (successful verification without a challenge) plus submitted challenge solutions that were correct and resulted in verification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :failedCount => String.t() | nil,
          :nocaptchaCount => String.t() | nil,
          :pageloadCount => String.t() | nil,
          :passedCount => String.t() | nil
        }

  field(:failedCount)
  field(:nocaptchaCount)
  field(:pageloadCount)
  field(:passedCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1ChallengeMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
