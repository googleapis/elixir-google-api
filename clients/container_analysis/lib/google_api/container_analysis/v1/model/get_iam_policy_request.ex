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

defmodule GoogleApi.ContainerAnalysis.V1.Model.GetIamPolicyRequest do
  @moduledoc """
  Request message for `GetIamPolicy` method.

  ## Attributes

  *   `options` (*type:* `GoogleApi.ContainerAnalysis.V1.Model.GetPolicyOptions.t`, *default:* `nil`) - OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :options => GoogleApi.ContainerAnalysis.V1.Model.GetPolicyOptions.t() | nil
        }

  field(:options, as: GoogleApi.ContainerAnalysis.V1.Model.GetPolicyOptions)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.GetIamPolicyRequest do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.GetIamPolicyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.GetIamPolicyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
