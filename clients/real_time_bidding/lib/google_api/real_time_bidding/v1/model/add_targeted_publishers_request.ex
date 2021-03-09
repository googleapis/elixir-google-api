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

defmodule GoogleApi.RealTimeBidding.V1.Model.AddTargetedPublishersRequest do
  @moduledoc """
  A request to start targeting the provided publishers in a specific pretargeting configuration. The pretargeting configuration itself specifies how these publishers are targeted in PretargetingConfig.publisherTargeting.

  ## Attributes

  *   `publisherIds` (*type:* `list(String.t)`, *default:* `nil`) - A list of publisher IDs to target in the pretargeting configuration. These values will be added to the list of targeted publisher IDs in PretargetingConfig.publisherTargeting.values. Publishers are identified by their publisher ID from ads.txt / app-ads.txt. See https://iabtechlab.com/ads-txt/ and https://iabtechlab.com/app-ads-txt/ for more details.
  *   `targetingMode` (*type:* `String.t`, *default:* `nil`) - Required. The targeting mode that should be applied to the list of publisher IDs. If are existing publisher IDs, must be equal to the existing PretargetingConfig.publisherTargeting.targetingMode or a 400 bad request error will be returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :publisherIds => list(String.t()) | nil,
          :targetingMode => String.t() | nil
        }

  field(:publisherIds, type: :list)
  field(:targetingMode)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.AddTargetedPublishersRequest do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.AddTargetedPublishersRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.AddTargetedPublishersRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
