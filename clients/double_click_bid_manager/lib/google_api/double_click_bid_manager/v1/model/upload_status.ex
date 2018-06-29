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

defmodule GoogleApi.DoubleClickBidManager.V1.Model.UploadStatus do
  @moduledoc """
  Represents the status of upload.

  ## Attributes

  - errors ([String.t]): Reasons why upload can&#39;t be completed. Defaults to: `null`.
  - rowStatus ([RowStatus]): Per-row upload status. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errors => list(any()),
          :rowStatus => list(GoogleApi.DoubleClickBidManager.V1.Model.RowStatus.t())
        }

  field(:errors, type: :list)
  field(:rowStatus, as: GoogleApi.DoubleClickBidManager.V1.Model.RowStatus, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.UploadStatus do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Model.UploadStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.UploadStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
