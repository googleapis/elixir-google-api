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

defmodule GoogleApi.CloudIot.V1.Model.SetIamPolicyRequest do
  @moduledoc """
  Request message for &#x60;SetIamPolicy&#x60; method.

  ## Attributes

  - policy (Policy): REQUIRED: The complete policy to be applied to the &#x60;resource&#x60;. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :policy => GoogleApi.CloudIot.V1.Model.Policy.t()
        }

  field(:policy, as: GoogleApi.CloudIot.V1.Model.Policy)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.SetIamPolicyRequest do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.SetIamPolicyRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.SetIamPolicyRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
