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

defmodule GoogleApi.Dataproc.V1.Model.AnalyzeBatchRequest do
  @moduledoc """
  A request to analyze a batch workload.

  ## Attributes

  *   `requestId` (*type:* `String.t`, *default:* `nil`) - Optional. A unique ID used to identify the request. If the service receives two AnalyzeBatchRequest (http://cloud/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.AnalyzeBatchRequest)s with the same request_id, the second request is ignored and the Operation that corresponds to the first request created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :requestId => String.t() | nil
        }

  field(:requestId)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.AnalyzeBatchRequest do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.AnalyzeBatchRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.AnalyzeBatchRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
