use Mix.Config

config :tesla, GoogleApi.TestClient.V1.Connection, adapter: Tesla.Mock
config :tesla, GoogleApi.TestClient.V2.Connection, adapter: Tesla.Mock
