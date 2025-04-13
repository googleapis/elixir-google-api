defmodule GoogleApi.AdExchangeSeller.V20.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :google_api_ad_exchange_seller,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/ad_exchange_seller"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.1.0"},
      {:ex_doc, "~> 0.37", only: :dev}
    ]
  end

  defp description() do
    """
    Accesses the inventory of Ad Exchange seller users and generates reports.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/ad_exchange_seller",
        "Homepage" => "https://developers.google.com/ad-exchange/seller-rest/"
      }
    ]
  end
end
