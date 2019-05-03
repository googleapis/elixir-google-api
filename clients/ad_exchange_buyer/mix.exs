defmodule GoogleApi.AdExchangeBuyer.V14.Mixfile do
  use Mix.Project

  @version "0.9.0"

  def project do
    [app: :google_api_ad_exchange_buyer,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/ad_exchange_buyer"
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
    Accesses your bidding-account information, submits creatives for validation, finds available direct deals, and retrieves performance reports.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/ad_exchange_buyer",
        "Homepage" => "https://developers.google.com/ad-exchange/buyer-rest/"
      }
    ]
  end
end
