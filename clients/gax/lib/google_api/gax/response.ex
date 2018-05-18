defmodule GoogleApi.Gax.Response do

  @successful_request_response 200..299

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
  @spec decode(Tesla.Env.t(), struct() | false, keyword()) ::
          {:ok, struct()} | {:error, Tesla.Env.t()}
  def decode(env, struct \\ nil, opts \\ [])

  def decode(%Tesla.Env{status: status} = env, _struct, _opts)
      when status not in @successful_request_response do
    {:error, env}
  end

  def decode(%Tesla.Env{} = env, false, _opts) do
    {:ok, env}
  end

  def decode(%Tesla.Env{body: nil}, _struct, _opts) do
    {:ok, nil}
  end

  def decode(%Tesla.Env{body: body}, struct, dataWrapped: true) do
    Poison.decode(body, as: %GoogleApi.Gax.Model.DataWrapper{}, struct: struct)
    |> case do
      {:ok, %{data: data}} -> {:ok, data}
      error -> error
    end
  end

  def decode(%Tesla.Env{body: body}, struct, _opts) do
    Poison.decode(body, as: struct)
  end
end