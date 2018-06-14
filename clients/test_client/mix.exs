defmodule GoogleApi.TestClient.V1.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :google_api_test_client,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/FIXME"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:ex_doc, "~> 0.16", only: :dev},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:google_gax, path: "../gax"}
    ]
  end

  defp description() do
    """
    Test client for testing generated clients
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/FIXME",
        "Homepage" => "https://github.com/GoogleCloudPlatform/elixir-google-api"
      }
    ]
  end
end
