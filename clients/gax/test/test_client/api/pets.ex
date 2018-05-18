defmodule TestClient.Api.Pets do
  use GoogleApi.Gax.ApiBase

  alias GoogleApi.Gax.{Connection, Request, Response}

  def pets_list(connection, project, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query,
      :prefix => :query,
      :projection => :query,
      :userProject => :query
    }

    request =
      Request.new
      |> Request.method(:get)
      |> Request.url("/storage/v1/b")
      |> Request.add_param(:query, :project, project)
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(%TestClient.Model.Pet{})
  end
end
