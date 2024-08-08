defmodule GoogleApi.CloudUserAccounts.Vm_alpha.Mixfile do
  use Mix.Project

  def project do
    [app: :google_api_cloud_user_accounts,
     version: "0.0.1",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/cloud_user_accounts"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:tesla, "~> 0.10"},
      {:poison, ">= 1.0.0"},
      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    """
    Creates and manages users and groups for accessing Google Compute Engine virtual machines.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/cloud_user_accounts",
        "Homepage" => "https://cloud.google.com/compute/docs/access/user-accounts/api/latest/"
      }
    ]
  end
end
