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

defmodule GoogleApi.AndroidManagement.V1.Model.MemoryEvent do
  @moduledoc """
  An event related to memory and storage measurements.

  ## Attributes

  - byteCount (String.t): The number of free bytes in the medium, or for EXTERNAL_STORAGE_DETECTED, the total capacity in bytes of the storage medium. Defaults to: `null`.
  - createTime (DateTime.t): The creation time of the event. Defaults to: `null`.
  - eventType (String.t): Event type. Defaults to: `null`.
    - Enum - one of [MEMORY_EVENT_TYPE_UNSPECIFIED, RAM_MEASURED, INTERNAL_STORAGE_MEASURED, EXTERNAL_STORAGE_DETECTED, EXTERNAL_STORAGE_REMOVED, EXTERNAL_STORAGE_MEASURED]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :byteCount => any(),
          :createTime => DateTime.t(),
          :eventType => any()
        }

  field(:byteCount)
  field(:createTime, as: DateTime)
  field(:eventType)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.MemoryEvent do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.MemoryEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.MemoryEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
