defmodule GoogleApi.Vault.V1.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :google_api_vault,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/vault"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.1.0"},
      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    """
    Add archiving and eDiscovery to G Suite. Manage, retain, search and export your organization’s email and on-the-record chats. Vault is included with G Suite's Business and Enterprise editions.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/vault",
        "Homepage" => "https://apps.google.com/products/vault/"
      }
    ]
  end
end
