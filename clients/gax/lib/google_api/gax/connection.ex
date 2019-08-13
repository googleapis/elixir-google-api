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

defmodule GoogleApi.Gax.Connection do
  @moduledoc """
  This module helps define and configure server connection.
  """

  defmacro __using__(opts) do
    quote do
      use Tesla

      @scopes unquote(Keyword.get(opts, :scopes, []))

      # Add any middleware here (authentication)
      plug(
        Tesla.Middleware.BaseUrl,
        Application.get_env(
          unquote(Keyword.get(opts, :otp_app)),
          :base_url,
          unquote(Keyword.get(opts, :base_url))
        )
      )

      plug(Tesla.Middleware.EncodeJson, engine: Poison)

      @doc """
      Configure a client connection using a provided OAuth2 token as a Bearer token

      ## Parameters

      *   `token` (*type:* `String.t`) - Bearer token

      ## Returns

      *   `Tesla.Env.client`
      """
      @spec new(String.t()) :: Tesla.Client.t()
      def new(token) when is_binary(token) do
        Tesla.client([
          {Tesla.Middleware.Headers, [{"authorization", "Bearer #{token}"}]}
        ])
      end

      @doc """
      Configure a client connection using a function which yields a Bearer token.

      ## Parameters

      *   `token_fetcher` (*type:* `list(String.t()) -> String.t()`) - Callback
          which provides an OAuth2 token given a list of scopes

      ## Returns

      *   `Tesla.Env.client`
      """
      @spec new((list(String.t()) -> String.t())) :: Tesla.Client.t()
      def new(token_fetcher) when is_function(token_fetcher) do
        token_fetcher.(@scopes)
        |> new
      end

      @doc """
      Configure an authless client connection

      ## Returns

      *   `Tesla.Env.client`
      """
      @spec new() :: Tesla.Client.t()
      def new do
        Tesla.client([])
      end

      @doc """
      Execute a request on this connection

      ## Returns

      *   `{:ok, Tesla.Env.t}` - If the call was successful
      *   `{:error, reason}` - If the call failed
      """
      @spec execute(Tesla.Client.t(), GoogleApi.Gax.Request.t()) :: {:ok, Tesla.Env.t()}
      def execute(connection, request) do
        request
        |> GoogleApi.Gax.Connection.build_request()
        |> (&request(connection, &1)).()
      end
    end
  end

  @doc """
  Converts a GoogleApi.Gax.Request struct into a keyword list to send via
  Tesla.
  """
  @spec build_request(GoogleApi.Gax.Request.t()) :: keyword()
  def build_request(request) do
    [url: request.url, method: request.method]
    |> build_query(request.query)
    |> build_headers(request.header, request.library_version)
    |> build_body(request.body, request.file)
  end

  defp build_query(output, []), do: output

  defp build_query(output, query_params) do
    Keyword.put(output, :query, query_params)
  end

  @gax_version Mix.Project.config() |> Keyword.get(:version, "")

  defp build_headers(output, header_params, library_version) do
    {other_api_client, other_headers} = find_api_client_headers(header_params, [], [])

    api_client =
      Enum.join(
        [
          "gl-elixir/#{System.version()}",
          "gax/#{@gax_version}",
          "gdcl/#{library_version}"
          | other_api_client
        ],
        " "
      )

    headers = [{"x-goog-api-client", api_client} | other_headers]
    Keyword.put(output, :headers, headers)
  end

  defp find_api_client_headers([], found, other_headers) do
    {Enum.reverse(found), Enum.reverse(other_headers)}
  end

  defp find_api_client_headers([{name, value} | remaining], found, other_headers) do
    normalized_name = name |> to_string() |> String.downcase()

    if normalized_name == "x-goog-api-client" do
      find_api_client_headers(remaining, [value | found], other_headers)
    else
      find_api_client_headers(remaining, found, [{name, value} | other_headers])
    end
  end

  # If no body or file fields and the request is a POST, set an empty body
  defp build_body(output, [], []) do
    method = Keyword.fetch!(output, :method)
    set_default_body(output, method)
  end

  defp build_body(output, [body: main_body], []) do
    Keyword.put(output, :body, main_body)
  end

  defp build_body(output, [], file_params) do
    body =
      Enum.reduce(file_params, Tesla.Multipart.new(), fn {file_name, file_path}, b ->
        Tesla.Multipart.add_file(b, file_path, name: file_name)
      end)

    Keyword.put(output, :body, body)
  end

  defp build_body(output, body_params, file_params) do
    body = Tesla.Multipart.new()

    body =
      Enum.reduce(body_params, body, fn {body_name, data}, b ->
        Tesla.Multipart.add_field(
          b,
          body_name,
          Poison.encode!(data),
          headers: [{:"Content-Type", "application/json"}]
        )
      end)

    body =
      Enum.reduce(file_params, body, fn {file_name, file_path}, b ->
        Tesla.Multipart.add_file(b, file_path, name: file_name)
      end)

    Keyword.put(output, :body, body)
  end

  @required_body_methods [:post, :patch, :put, :delete]

  defp set_default_body(output, method) when method in @required_body_methods do
    Keyword.put(output, :body, "")
  end

  defp set_default_body(output, _) do
    output
  end
end
