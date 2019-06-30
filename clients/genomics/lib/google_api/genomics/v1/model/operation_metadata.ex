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

defmodule GoogleApi.Genomics.V1.Model.OperationMetadata do
  @moduledoc """
  Metadata describing an Operation.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - This field is deprecated. Use `labels` instead. Optionally provided by the
      caller when submitting the request that creates the operation.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the job was submitted to the Genomics service.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the job stopped running.
  *   `events` (*type:* `list(GoogleApi.Genomics.V1.Model.OperationEvent.t)`, *default:* `nil`) - Optional event messages that were generated during the job's execution.
      This also contains any warnings that were generated during import
      or export.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optionally provided by the caller when submitting the request that creates
      the operation.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Project in which the job is scoped.
  *   `request` (*type:* `map()`, *default:* `nil`) - The original request that started the operation. Note that this will be in
      current version of the API. If the operation was started with v1beta2 API
      and a GetOperation is performed on v1 API, a v1 request will be returned.
  *   `runtimeMetadata` (*type:* `map()`, *default:* `nil`) - Runtime metadata on this Operation.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the job began to run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t(),
          :createTime => DateTime.t(),
          :endTime => DateTime.t(),
          :events => list(GoogleApi.Genomics.V1.Model.OperationEvent.t()),
          :labels => map(),
          :projectId => String.t(),
          :request => map(),
          :runtimeMetadata => map(),
          :startTime => DateTime.t()
        }

  field(:clientId)
  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:events, as: GoogleApi.Genomics.V1.Model.OperationEvent, type: :list)
  field(:labels, type: :map)
  field(:projectId)
  field(:request, type: :map)
  field(:runtimeMetadata, type: :map)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.OperationMetadata do
  def decode(value, options) do
    GoogleApi.Genomics.V1.Model.OperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.OperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
