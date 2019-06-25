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

defmodule GoogleApi.Gax.Response do
  @moduledoc """
  This module helps decode Tesla responses
  """

  alias GoogleApi.Gax.DataWrapper

  @doc """
  Handle the response for a Tesla request

  ## Parameters

  *   `response` (*type:* `{:ok, Tesla.Env.t} | {:error, reason}`) - The response object
  *   `opts` (*type:* `keyword()`) - [optional] Optional parameters
      *   `:dataWrapped` (*type:* `boolean()`) - If true, the remove the wrapping "data" field. Defaults to false.
      *   `:decode` (*type:* `boolean()`) - If false, returns the entire reponse. Defaults to true.
      *   `:struct` (*type:* `module`)

  ## Returns

  *   `{:ok, struct()}` on success
  *   `{:error, Tesla.Env.t}` on failure
  """
  @spec decode({:ok, Tesla.Env.t()}, keyword()) :: {:ok, struct()} | {:error, Tesla.Env.t()}
  def decode(env, opts \\ [])

  def decode({:error, reason}, _), do: {:error, reason}

  def decode({:ok, %Tesla.Env{status: status} = env}, _)
      when status < 200 or status >= 300 do
    {:error, env}
  end

  def decode({:ok, %Tesla.Env{body: body} = env}, opts) do
    if Keyword.get(opts, :decode, true) do
      data_wrapped = Keyword.get(opts, :data_wrapped, false)
      struct = Keyword.get(opts, :struct, nil)
      do_decode(body, data_wrapped, struct)
    else
      {:ok, env}
    end
  end

  defp do_decode(nil, _data_wrapped, _struct) do
    {:ok, nil}
  end

  defp do_decode(body, true, struct) do
    Poison.decode(body, as: %DataWrapper{}, struct: struct)
  end

  defp do_decode(body, _data_wrapped, struct) do
    Poison.decode(body, as: struct)
  end
end
