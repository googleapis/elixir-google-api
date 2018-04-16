defmodule GoogleApi.Drive.V3.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :google_api_drive,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/drive"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:tesla, "~> 0.8"},
      {:poison, ">= 1.0.0"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:goth, "~> 0.8.0", only: :test}
    ]
  end

  defp description() do
    """
    Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/drive",
        "Homepage" => "https://developers.google.com/drive/"
      }
    ]
  end
end
