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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.PolicyBinding do
  @moduledoc """
  Translates to IAM Policy bindings (without auditing at this level)

  ## Attributes

  *   `members` (*type:* `list(String.t)`, *default:* `nil`) - Uses the same format as in IAM policy. `member` must include both a prefix and ID. For example, `user:{emailId}`, `serviceAccount:{emailId}`, `group:{emailId}`.
  *   `role` (*type:* `String.t`, *default:* `nil`) - Role. (https://cloud.google.com/iam/docs/understanding-roles) For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :members => list(String.t()) | nil,
          :role => String.t() | nil
        }

  field(:members, type: :list)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.PolicyBinding do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.PolicyBinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.PolicyBinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
