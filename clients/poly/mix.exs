defmodule GoogleApi.Poly.V1.Mixfile do
  use Mix.Project

  @version "0.2.0"

  def project do
    [app: :google_api_poly,
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
    The Poly API provides read access to assets hosted on &lt;a href&#x3D;\&quot;https://poly.google.com\&quot;&gt;poly.google.com&lt;/a&gt; to all, and upload access to &lt;a href&#x3D;\&quot;https://poly.google.com\&quot;&gt;poly.google.com&lt;/a&gt; for whitelisted accounts. 
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/FIXME",
        "Homepage" => "https://developers.google.com/poly/"
      }
    ]
  end
end
