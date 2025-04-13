defmodule GoogleApi.Gax.MixProject do
  use Mix.Project

  @version "0.4.1"

  def project do
    [
      app: :google_gax,
      version: @version,
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      elixirc_paths: paths(Mix.env()),
      # consolidate_protocols: Mix.env != :test,
      source_url:
        "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/gax"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:tesla, "~> 1.2"},
      {:mime, "~> 1.0"},
      {:poison, ">= 3.0.0 and <= 5.0.0"},
      {:ex_doc, "~> 0.16", only: :dev},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end

  defp description() do
    """
    Google API Extensions
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching", "Daniel Azuma"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" =>
          "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/gax"
      }
    ]
  end

  defp paths(:test), do: ["lib", "test/test_client"]

  defp paths(_), do: ["lib"]
end
