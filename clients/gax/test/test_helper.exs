defmodule TestClient do
  defmodule Model do
    defmodule Pet do
      use GoogleApi.Gax.ModelBase

      field :id
      field :category, as: TestClient.Model.Category
      field :name
      field :tags, as: TestClient.Model.Tag, list: true
      field :status
    end

    defmodule Category do
      use GoogleApi.Gax.ModelBase

      field :id
      field :name
    end

    defmodule Tag do
      use GoogleApi.Gax.ModelBase

      field :id
      field :name
    end
  end

  defmodule Api do
    defmodule Pets do
      use GoogleApi.Gax.ApiBase

      alias GoogleApi.Gax.Request

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
  end
end

defimpl Poison.Decoder, for: TestClient.Model.Pet do
  def decode(value, options) do
    TestClient.Model.Pet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: TestClient.Model.Pet do
  def encode(value, options) do
    TestClient.Model.Pet.encode(value, options)
  end
end

ExUnit.start()