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

defmodule GoogleApi.Monitoring.V3.Model.CollectdValueError do
  @moduledoc """
  Describes the error status for values that were not written.

  ## Attributes

  - error (Status): Records the error status for the value. Defaults to: `null`.
  - index (integer()): The zero-based index in CollectdPayload.values within the parent CreateCollectdTimeSeriesRequest.collectd_payloads. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.Monitoring.V3.Model.Status.t(),
          :index => any()
        }

  field(:error, as: GoogleApi.Monitoring.V3.Model.Status)
  field(:index)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.CollectdValueError do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.CollectdValueError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.CollectdValueError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
