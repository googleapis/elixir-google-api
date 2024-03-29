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

defmodule GoogleApi.AccessApproval.V1.Model.DismissDecision do
  @moduledoc """
  A decision that has been made to dismiss an approval request.

  ## Attributes

  *   `dismissTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the approval request was dismissed.
  *   `implicit` (*type:* `boolean()`, *default:* `nil`) - This field will be true if the ApprovalRequest was implicitly dismissed due to inaction by the access approval approvers (the request is not acted on by the approvers before the exiration time).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dismissTime => DateTime.t() | nil,
          :implicit => boolean() | nil
        }

  field(:dismissTime, as: DateTime)
  field(:implicit)
end

defimpl Poison.Decoder, for: GoogleApi.AccessApproval.V1.Model.DismissDecision do
  def decode(value, options) do
    GoogleApi.AccessApproval.V1.Model.DismissDecision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessApproval.V1.Model.DismissDecision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
