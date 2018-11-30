defmodule GoogleApi.Books.V1.Mixfile do
  use Mix.Project

  @version "0.2.1"

  def project() do
    [
      app: :google_api_books,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/books"
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
    "Searches for books and manages your Google Books library."
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/books",
        "Homepage" => "https://developers.google.com/books/"
      }
    ]
  end
end
