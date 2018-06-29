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

defmodule GoogleApi.Logging.V2.Model.LogEntryOperation do
  @moduledoc """
  Additional information about a potentially long-running operation with which a log entry is associated.

  ## Attributes

  - first (boolean()): Optional. Set this to True if this is the first log entry in the operation. Defaults to: `null`.
  - id (String.t): Optional. An arbitrary operation identifier. Log entries with the same identifier are assumed to be part of the same operation. Defaults to: `null`.
  - last (boolean()): Optional. Set this to True if this is the last log entry in the operation. Defaults to: `null`.
  - producer (String.t): Optional. An arbitrary producer identifier. The combination of id and producer must be globally unique. Examples for producer: \&quot;MyDivision.MyBigCompany.com\&quot;, \&quot;github.com/MyProject/MyApplication\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :first => any(),
          :id => any(),
          :last => any(),
          :producer => any()
        }

  field(:first)
  field(:id)
  field(:last)
  field(:producer)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.LogEntryOperation do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.LogEntryOperation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.LogEntryOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
