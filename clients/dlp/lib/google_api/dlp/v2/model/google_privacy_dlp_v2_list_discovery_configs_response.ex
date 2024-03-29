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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ListDiscoveryConfigsResponse do
  @moduledoc """
  Response message for ListDiscoveryConfigs.

  ## Attributes

  *   `discoveryConfigs` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryConfig.t)`, *default:* `nil`) - List of configs, up to page_size in ListDiscoveryConfigsRequest.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - If the next page is available then this value is the next page token to be used in the following ListDiscoveryConfigs request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :discoveryConfigs =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryConfig.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:discoveryConfigs,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryConfig,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ListDiscoveryConfigsResponse do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ListDiscoveryConfigsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ListDiscoveryConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
