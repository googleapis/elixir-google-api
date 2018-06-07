# Copyright 2018 Google Inc.
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
      plug(Tesla.Middleware.BaseUrl, unquote(Keyword.get(opts, :base_url)))
      plug(Tesla.Middleware.Headers, %{"User-Agent" => "Elixir"})
      plug(Tesla.Middleware.EncodeJson)

      @doc """
      Configure a client connection using a provided OAuth2 token as a Bearer token

      ## Parameters

      - token (String): Bearer token

      ## Returns

      Tesla.Env.client
      """
      @spec new(String.t()) :: Tesla.Client.t()
      def new(token) when is_binary(token) do
        Tesla.build_client([
          {Tesla.Middleware.Headers, %{"Authorization" => "Bearer #{token}"}}
        ])
      end

      @doc """
      Configure a client connection using a function which yields a Bearer token.

      ## Parameters

      - token_fetcher (function arity of 1): Callback which provides an OAuth2 token
        given a list of scopes

      ## Returns

      Tesla.Env.client
      """
      @spec new((list(String.t()) -> String.t())) :: Tesla.Client.t()
      def new(token_fetcher) when is_function(token_fetcher) do
        token_fetcher.(@scopes)
        |> new
      end

      @doc """
      Configure an authless client connection

      # Returns

      Tesla.Client.t
      """
      @spec new() :: Tesla.Client.t()
      def new do
        Tesla.build_client([])
      end

      @doc """
      Execute a request on this connection

      # Returns

      Tesla.Env
      """
      @spec execute(Tesla.Client.t(), GoogleApi.Gax.Request.t()) :: Tesla.Env.t()
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
    |> build_headers(request.header)
    |> build_body(request.body, request.file)
  end

  defp build_query(output, []), do: output

  defp build_query(output, query_params) do
    Keyword.put(output, :query, query_params)
  end

  defp build_headers(output, []), do: output

  defp build_headers(output, header_params) do
    Keyword.put(output, :headers, header_params)
  end

  defp build_body(output, [], []), do: output

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
end
