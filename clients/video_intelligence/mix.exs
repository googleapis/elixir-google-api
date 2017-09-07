defmodule GoogleApi.VideoIntelligence.V1BETA1.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project() do
    [
      app: :google_api_video_intelligence,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/video_intelligence"
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
    Google Cloud Video Intelligence API.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/video_intelligence",
        "Homepage" => "https://cloud.google.com/video-intelligence/"
      }
    ]
  end
end
