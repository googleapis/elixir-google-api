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

defmodule GoogleApi.Spanner.V1.Model.CreateInstanceRequest do
  @moduledoc """
  The request for CreateInstance.

  ## Attributes

  - instance (GoogleApi.Spanner.V1.Model.Instance.t): Required. The instance to create.  The name may be omitted, but if
  specified must be `<parent>/instances/<instance_id>`. Defaults to `nil`.
  - instanceId (String.t): Required. The ID of the instance to create.  Valid identifiers are of the
  form `a-z*[a-z0-9]` and must be between 2 and 64 characters in
  length. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instance => GoogleApi.Spanner.V1.Model.Instance.t(),
          :instanceId => String.t()
        }

  field(:instance, as: GoogleApi.Spanner.V1.Model.Instance)
  field(:instanceId)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CreateInstanceRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.CreateInstanceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CreateInstanceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
