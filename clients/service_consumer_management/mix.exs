defmodule GoogleApi.ServiceConsumerManagement.V1.Mixfile do
  use Mix.Project

  @version "0.4.0"

  def project do
    [app: :google_api_service_consumer_management,
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
      {:google_gax, "~> 0.1"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end

  defp description() do
    """
    Manages the service consumers of a Service Infrastructure service.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/FIXME",
        "Homepage" => "https://cloud.google.com/service-consumer-management/docs/overview"
      }
    ]
  end
end
