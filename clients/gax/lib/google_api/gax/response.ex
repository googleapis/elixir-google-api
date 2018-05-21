defmodule GoogleApi.Gax.Response do

  @successful_request_response 200..299

  alias GoogleApi.Gax.Model.DataWrapper

  @doc """
  Handle the response for a Tesla request

  ## Parameters

  - env (Tesla.Env) - The response object
  - struct (struct | false) - The shape of the struct to deserialize into. If false, returns the Tesla response.
  - opts (KeywordList) - [optional] Optional parameters
    - :dataWrapped (boolean()): If true, the remove the wrapping "data" field.

  ## Returns

  {:ok, struct} on success
  {:error, info} on failure
  """
  @spec decode(Tesla.Env.t(), keyword()) ::
          {:ok, struct()} | {:error, Tesla.Env.t()}
  def decode(env, opts \\ [])

  def decode(%Tesla.Env{status: status} = env, _) when status not in @successful_request_response do
    {:error, env}
  end

  def decode(env = %Tesla.Env{body: body}, opts) do
    if (Keyword.get(opts, :decode, true)) do
      data_wrapped = Keyword.get(opts, :data_wrapped, false)
      struct = Keyword.get(opts, :struct, nil)
      do_decode(body, data_wrapped, struct)
    else
      env
    end
  end

  # If no body, then return ok and nil
  defp do_decode(nil, _, _) do
    {:ok, nil}
  end

  defp do_decode(body, true, struct) do
    Poison.decode(body, as: %DataWrapper{}, struct: struct)
  end

  defp do_decode(body, _, struct) do
    Poison.decode(body, as: struct)
  end
end