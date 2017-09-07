defmodule GoogleApi.CloudTrace.V2.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project() do
    [
      app: :google_api_cloud_trace,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/cloud_trace"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:tesla, "~> 0.5"},
      {:poison, ">= 1.0.0"},
      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    """
    Send and retrieve trace data from Stackdriver Trace. Data is generated and available by default
    for all App Engine applications. Data from other applications can be written to Stackdriver Trace
    for display, reporting, and analysis.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/cloud_trace",
        "Homepage" => "https://cloud.google.com/trace/"
      }
    ]
  end
end
