defmodule GoogleApi.CloudErrorReporting.V1BETA1.Mixfile do
  use Mix.Project

  @version "0.2.0"

  def project() do
    [
      app: :google_api_cloud_error_reporting,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/cloud_error_reporting"
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
    Groups and counts similar errors from cloud services and applications,
    reports new errors, and provides access to error groups and their associated errors.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/cloud_error_reporting",
        "Homepage" => "https://cloud.google.com/error-reporting/"
      }
    ]
  end
end
