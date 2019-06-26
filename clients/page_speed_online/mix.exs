defmodule GoogleApi.PageSpeedOnline.V2.Mixfile do
  use Mix.Project

  @version "0.2.0"

  def project do
    [app: :google_api_page_speed_online,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/page_speed_online"
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
    Analyzes the performance of a web page and provides tailored suggestions to make that page faster.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/page_speed_online",
        "Homepage" => "https://developers.google.com/speed/docs/insights/v2/getting-started"
      }
    ]
  end
end
