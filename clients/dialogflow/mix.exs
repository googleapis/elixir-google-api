defmodule GoogleApi.Dialogflow.V2.Mixfile do
  use Mix.Project

  @version "0.1.0"

  def project do
    [app: :google_api_dialogflow,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/dialogflow"
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
    An end-to-end development suite for conversational interfaces (e.g., chatbots, voice-powered apps and devices).
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/dialogflow",
        "Homepage" => "https://cloud.google.com/dialogflow-enterprise/"
      }
    ]
  end
end
