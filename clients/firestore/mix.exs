defmodule GoogleApiFirestore.MixProject do
  use Mix.Project

  @version "0.4.0"

  def project do
    [
      app: :google_api_firestore,
      version: @version,
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url:
        "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/firestore"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:google_gax, "~> 0.1.0"},
      {:ex_doc, ">= 0.16.0", only: :dev},
      {:goth, "~> 0.8.0", only: :test}
    ]
  end

  defp description() do
    """
    API for managing the Firestore cloud database.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching", "Shawn Campbell", "Carlo DiCelico"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" =>
          "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/firestore",
        "Homepage" => "https://cloud.google.com/firestore"
      }
    ]
  end
end
