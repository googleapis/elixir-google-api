# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket do
  @moduledoc """
  A DeltaPresenceEstimationHistogramBucket message with the following values:   min_probability: 0.1   max_probability: 0.2   frequency: 42 means that there are 42 records for which δ is in [0.1, 0.2). An important particular case is when min_probability &#x3D; max_probability &#x3D; 1: then, every individual who shares this quasi-identifier combination is in the dataset.

  ## Attributes

  - bucketSize (String.t): Number of records within these probability bounds. Defaults to: `null`.
  - bucketValueCount (String.t): Total number of distinct quasi-identifier tuple values in this bucket. Defaults to: `null`.
  - bucketValues ([GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues]): Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20. Defaults to: `null`.
  - maxProbability (float()): Always greater than or equal to min_probability. Defaults to: `null`.
  - minProbability (float()): Between 0 and 1. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketSize => any(),
          :bucketValueCount => any(),
          :bucketValues =>
            list(
              GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues.t()
            ),
          :maxProbability => any(),
          :minProbability => any()
        }

  field(:bucketSize)
  field(:bucketValueCount)

  field(:bucketValues,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues,
    type: :list
  )

  field(:maxProbability)
  field(:minProbability)
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
