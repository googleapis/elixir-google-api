defmodule GoogleApi.OAuth2.V2.Mixfile do
  use Mix.Project

  @version "0.3.0"

  def project do
    [app: :google_api_o_auth2,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/o_auth2"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.1.0"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:goth, "~> 0.8.0", only: [:dev, :test]}
    ]
  end

  defp description() do
    """
    Obtains end-user authorization grants for use with other Google APIs.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/o_auth2",
        "Homepage" => "https://developers.google.com/accounts/docs/OAuth2"
      }
    ]
  end
end
