# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Jobs.V2.Model.UpdateJobRequest do
  @moduledoc """
  Input only.

  Update job request.

  ## Attributes

  *   `disableStreetAddressResolution` (*type:* `boolean()`, *default:* `nil`) - Deprecated. Please use processing_options. This flag is ignored if
      processing_options is set.

      Optional.

      If set to `true`, the service does not attempt resolve a more precise
      address for the job.
  *   `job` (*type:* `GoogleApi.Jobs.V2.Model.Job.t`, *default:* `nil`) - Required. The Job to be updated.
  *   `processingOptions` (*type:* `GoogleApi.Jobs.V2.Model.JobProcessingOptions.t`, *default:* `nil`) - Optional. Options for job processing.

      UpdateJobRequest.disable_street_address_resolution is ignored if this
      flag is set.
  *   `updateJobFields` (*type:* `String.t`, *default:* `nil`) - Optional but strongly recommended to be provided for the best service
      experience.

      If update_job_fields is provided, only the specified fields in
      job are updated. Otherwise all the fields are updated.

      A field mask to restrict the fields that are updated. Valid values are:

      * jobTitle
      * employmentTypes
      * description
      * applicationUrls
      * applicationEmailList
      * applicationInstruction
      * responsibilities
      * qualifications
      * educationLevels
      * level
      * department
      * startDate
      * endDate
      * compensationInfo
      * incentives
      * languageCode
      * benefits
      * expireTime
      * customAttributes
      * visibility
      * publishDate
      * promotionValue
      * locations
      * region
      * expiryDate (deprecated)
      * filterableCustomFields (deprecated)
      * unindexedCustomFields (deprecated)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableStreetAddressResolution => boolean(),
          :job => GoogleApi.Jobs.V2.Model.Job.t(),
          :processingOptions => GoogleApi.Jobs.V2.Model.JobProcessingOptions.t(),
          :updateJobFields => String.t()
        }

  field(:disableStreetAddressResolution)
  field(:job, as: GoogleApi.Jobs.V2.Model.Job)
  field(:processingOptions, as: GoogleApi.Jobs.V2.Model.JobProcessingOptions)
  field(:updateJobFields)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.UpdateJobRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.UpdateJobRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.UpdateJobRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
