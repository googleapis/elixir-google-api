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

defmodule GoogleApi.Jobs.V2.Model.JobProcessingOptions do
  @moduledoc """
  Input only.

  Options for job processing.

  ## Attributes

  *   `disableStreetAddressResolution` (*type:* `boolean()`, *default:* `nil`) - Optional. If set to `true`, the service does not attempt to resolve a
      more precise address for the job.
  *   `htmlSanitization` (*type:* `String.t`, *default:* `nil`) - Optional. Option for job HTML content sanitization. Applied fields are:

      * description
      * applicationInstruction
      * incentives
      * qualifications
      * responsibilities

      HTML tags in these fields may be stripped if sanitiazation is not disabled.

      Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableStreetAddressResolution => boolean(),
          :htmlSanitization => String.t()
        }

  field(:disableStreetAddressResolution)
  field(:htmlSanitization)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.JobProcessingOptions do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.JobProcessingOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.JobProcessingOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
