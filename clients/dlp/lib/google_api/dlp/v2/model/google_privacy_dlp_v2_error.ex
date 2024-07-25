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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error do
  @moduledoc """
  Details information about an error encountered during job execution or the results of an unsuccessful activation of the JobTrigger.

  ## Attributes

  *   `details` (*type:* `GoogleApi.DLP.V2.Model.GoogleRpcStatus.t`, *default:* `nil`) - Detailed error codes and messages.
  *   `extraInfo` (*type:* `String.t`, *default:* `nil`) - Additional information about the error.
  *   `timestamps` (*type:* `list(DateTime.t)`, *default:* `nil`) - The times the error occurred. List includes the oldest timestamp and the last 9 timestamps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :details => GoogleApi.DLP.V2.Model.GoogleRpcStatus.t() | nil,
          :extraInfo => String.t() | nil,
          :timestamps => list(DateTime.t()) | nil
        }

  field(:details, as: GoogleApi.DLP.V2.Model.GoogleRpcStatus)
  field(:extraInfo)
  field(:timestamps, as: DateTime, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
