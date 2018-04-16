defmodule GoogleApis.OauthStrategy do
  use OAuth2.Strategy

  # Public API
  def client(client_id, client_secret) do
    OAuth2.Client.new([
      strategy: __MODULE__,
      client_id: client_id,
      client_secret: client_secret,
      site: "https://accounts.google.com",
      authorize_url: "/o/oauth2/auth",
      token_url: "/o/oauth2/token",
      redirect_uri: "http://localhost/auth/callback"
    ])
  end

  def authorize_url!(client, params \\ []) do
    OAuth2.Client.authorize_url!(client, params)
  end

  # you can pass options to the underlying http library via `opts` parameter
  def get_token!(client, params \\ [], headers \\ [], opts \\ []) do
    OAuth2.Client.get_token!(client, params, headers, opts)
  end

  # Strategy Callbacks
  def authorize_url(client, params) do
    OAuth2.Strategy.AuthCode.authorize_url(client, params)
  end

  def get_token(client, params, headers) do
    client
    |> put_param(:client_secret, client.client_secret)
    |> put_header("accept", "application/json")
    |> OAuth2.Strategy.AuthCode.get_token(params, headers)
  end
end