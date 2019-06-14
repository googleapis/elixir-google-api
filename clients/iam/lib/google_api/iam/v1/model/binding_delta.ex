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

defmodule GoogleApi.IAM.V1.Model.BindingDelta do
  @moduledoc """
  One delta entry for Binding. Each individual change (only one member in each
  entry) to a binding will be a separate entry.

  ## Attributes

  - action (String.t): The action that was performed on a Binding.
  Required Defaults to `nil`.
  - condition (GoogleApi.IAM.V1.Model.Expr.t): Unimplemented. The condition that is associated with this binding.
  This field is logged only for Cloud Audit Logging. Defaults to `nil`.
  - member (String.t): A single identity requesting access for a Cloud Platform resource.
  Follows the same format of Binding.members.
  Required Defaults to `nil`.
  - role (String.t): Role that is assigned to `members`.
  For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  Required Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t(),
          :condition => GoogleApi.IAM.V1.Model.Expr.t(),
          :member => String.t(),
          :role => String.t()
        }

  field(:action)
  field(:condition, as: GoogleApi.IAM.V1.Model.Expr)
  field(:member)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.BindingDelta do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.BindingDelta.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.BindingDelta do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
