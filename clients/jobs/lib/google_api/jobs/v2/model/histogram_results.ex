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

defmodule GoogleApi.Jobs.V2.Model.HistogramResults do
  @moduledoc """
  Output only.  Histogram results that matches HistogramFacets specified in SearchJobsRequest.

  ## Attributes

  - compensationHistogramResults ([CompensationHistogramResult]): Specifies compensation field-based histogram results that matches HistogramFacets.compensation_histogram_requests. Defaults to: `null`.
  - customAttributeHistogramResults ([CustomAttributeHistogramResult]): Specifies histogram results for custom attributes that matches HistogramFacets.custom_attribute_histogram_facets. Defaults to: `null`.
  - simpleHistogramResults ([HistogramResult]): Specifies histogram results that matches HistogramFacets.simple_histogram_facets. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compensationHistogramResults =>
            list(GoogleApi.Jobs.V2.Model.CompensationHistogramResult.t()),
          :customAttributeHistogramResults =>
            list(GoogleApi.Jobs.V2.Model.CustomAttributeHistogramResult.t()),
          :simpleHistogramResults => list(GoogleApi.Jobs.V2.Model.HistogramResult.t())
        }

  field(:compensationHistogramResults,
    as: GoogleApi.Jobs.V2.Model.CompensationHistogramResult,
    type: :list
  )

  field(:customAttributeHistogramResults,
    as: GoogleApi.Jobs.V2.Model.CustomAttributeHistogramResult,
    type: :list
  )

  field(:simpleHistogramResults, as: GoogleApi.Jobs.V2.Model.HistogramResult, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.HistogramResults do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.HistogramResults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.HistogramResults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
