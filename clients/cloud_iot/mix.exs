defmodule GoogleApi.CloudIot.V1.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :google_api_cloud_iot,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/cloud_iot"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.1.0"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end

  defp description() do
    """
    Registers and manages IoT (Internet of Things) devices that connect to the Google Cloud Platform.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/cloud_iot",
        "Homepage" => "https://cloud.google.com/iot"
      }
    ]
  end
end
