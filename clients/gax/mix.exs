defmodule GoogleApi.Gax.MixProject do
  use Mix.Project

  @version "0.1.2"

  def project do
    [
      app: :google_gax,
      version: @version,
      elixir: "~> 1.4",
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
      {:tesla, "~> 1.0"},
      {:poison, ">= 1.0.0 and < 4.0.0"},
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
      maintainers: ["Jeff Ching"],
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
