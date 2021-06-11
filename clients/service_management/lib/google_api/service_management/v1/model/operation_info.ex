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

defmodule GoogleApi.ServiceManagement.V1.Model.OperationInfo do
  @moduledoc """
  A message representing the message types used by a long-running operation. Example: rpc Export(ExportRequest) returns (google.longrunning.Operation) { option (google.longrunning.operation_info) = { response_type: "ExportResponse" metadata_type: "ExportMetadata" }; }

  ## Attributes

  *   `metadataType` (*type:* `String.t`, *default:* `nil`) - Required. The message name of the metadata type for this long-running operation. If the response is in a different package from the rpc, a fully-qualified message name must be used (e.g. `google.protobuf.Struct`). Note: Altering this value constitutes a breaking change.
  *   `responseType` (*type:* `String.t`, *default:* `nil`) - Required. The message name of the primary return type for this long-running operation. This type will be used to deserialize the LRO's response. If the response is in a different package from the rpc, a fully-qualified message name must be used (e.g. `google.protobuf.Struct`). Note: Altering this value constitutes a breaking change.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadataType => String.t() | nil,
          :responseType => String.t() | nil
        }

  field(:metadataType)
  field(:responseType)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.OperationInfo do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.OperationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.OperationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
