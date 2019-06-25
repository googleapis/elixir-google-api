# Copyright 2018 Google LLC
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

defmodule GoogleApi.Gax.DataWrapper do
  @moduledoc """
  Module and struct to help serialize/deserialize "data-wrapped" responses.

  An endpoint response may be declared as type "Pet" and "data-wrapped" which
  means the response would have an outer object with a single "data" key:

      {
        "data": { // real pet data
          "id": 123,
          "name": "Fido"
        }
      }
  """

  defstruct [:data]

  @type t :: %__MODULE__{
          data: any()
        }

  @doc """
  Unwrap a data-wrapped JSON response.

  ## Examples

      iex> GoogleApi.Gax.DataWrapper.decode(%GoogleApi.Gax.DataWrapper{data: %{"id" => 123, "name" => "Fido"}}, struct: %TestClient.Model.Pet{})
      %TestClient.Model.Pet{id: 123, name: "Fido"}

  """
  @spec decode(GoogleApi.Gax.DataWrapper.t(), keyword()) :: any()
  def decode(data_wrapper, options) do
    struct = options[:struct]
    Poison.Decode.decode(data_wrapper.data, as: struct)
  end
end

defimpl Poison.Decoder, for: GoogleApi.Gax.DataWrapper do
  def decode(value, options) do
    GoogleApi.Gax.DataWrapper.decode(value, options)
  end
end
