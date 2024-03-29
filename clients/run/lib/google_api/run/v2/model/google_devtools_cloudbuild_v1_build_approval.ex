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

defmodule GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1BuildApproval do
  @moduledoc """
  BuildApproval describes a build's approval configuration, state, and result.

  ## Attributes

  *   `config` (*type:* `GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ApprovalConfig.t`, *default:* `nil`) - Output only. Configuration for manual approval of this build.
  *   `result` (*type:* `GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ApprovalResult.t`, *default:* `nil`) - Output only. Result of manual approval for this Build.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of this build's approval.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ApprovalConfig.t() | nil,
          :result => GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ApprovalResult.t() | nil,
          :state => String.t() | nil
        }

  field(:config, as: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ApprovalConfig)
  field(:result, as: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1ApprovalResult)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1BuildApproval do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1BuildApproval.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleDevtoolsCloudbuildV1BuildApproval do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
