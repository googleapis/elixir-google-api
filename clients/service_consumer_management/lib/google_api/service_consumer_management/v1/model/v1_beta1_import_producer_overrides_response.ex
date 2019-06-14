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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ImportProducerOverridesResponse do
  @moduledoc """
  Response message for ImportProducerOverrides

  ## Attributes

  - overrides (list(GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1QuotaOverride.t)): The overrides that were created from the imported data. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :overrides =>
            list(GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1QuotaOverride.t())
        }

  field(
    :overrides,
    as: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1QuotaOverride,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ImportProducerOverridesResponse do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ImportProducerOverridesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ServiceConsumerManagement.V1.Model.V1Beta1ImportProducerOverridesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
