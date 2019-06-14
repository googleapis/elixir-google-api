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

defmodule GoogleApi.Testing.V1.Model.ClientInfoDetail do
  @moduledoc """
  Key-value pair of detailed information about the client which invoked the
  test. Examples: {'Version', '1.0'}, {'Release Track', 'BETA'}.

  ## Attributes

  - key (String.t): Required. The key of detailed client information. Defaults to `nil`.
  - value (String.t): Required. The value of detailed client information. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t(),
          :value => String.t()
        }

  field(:key)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.ClientInfoDetail do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.ClientInfoDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.ClientInfoDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
