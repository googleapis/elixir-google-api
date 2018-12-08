# Copyright 2018 Google Inc.
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

defmodule Mix.Tasks.GoogleApis.Auth do
  use Mix.Task
  alias GoogleApis.OauthStrategy
  @shortdoc "Fetch an OAuth token for a user"

  def run([]) do
    Mix.Shell.IO.error("Please add a comma-separated list of scopes to authenticate for.")
  end

  def run(scopes) when is_list(scopes) do
    Application.ensure_all_started(:google_apis)

    authenticate(
      Application.get_env(:google_apis, :oauth_client),
      Application.get_env(:google_apis, :oauth_secret),
      Enum.join(scopes, ",")
    )
  end

  defp build_client(nil, _), do: {:error, "Please set the Google OAuth client id"}
  defp build_client(_, nil), do: {:error, "Please set the Google OAuth client secret"}

  defp build_client(client_id, client_secret) do
    {:ok, OauthStrategy.client(client_id, client_secret)}
  end

  defp get_verification_code(authorize_url) do
    Mix.Shell.IO.info("Open the following link in your brower:")
    Mix.Shell.IO.info(authorize_url)

    Mix.Shell.IO.prompt(
      "Enter verification code:"
      |> String.trim()
    )
  end

  defp authenticate(client_id, client_secret, scopes) do
    with {:ok, client} <- build_client(client_id, client_secret),
         authorize_url <- OauthStrategy.authorize_url!(client, scope: scopes),
         code <- get_verification_code(authorize_url),
         {:ok, oauth} <- OAuth2.Client.get_token(client, code: code) do
      Mix.Shell.IO.info("Access Token:  #{oauth.token.access_token}")
      Mix.Shell.IO.info("Refresh Token: #{oauth.token.refresh_token}")
    else
      {:error, %{body: %{"error" => error, "error_description" => description}}} ->
        Mix.Shell.IO.error("#{error} - #{description}")

      {:error, msg} ->
        Mix.Shell.IO.error(msg)
    end
  end
end
