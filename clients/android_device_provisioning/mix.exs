defmodule GoogleApi.AndroidDeviceProvisioning.V1.Mixfile do
  use Mix.Project

  @version "0.6.0"

  def project do
    [app: :google_api_android_device_provisioning,
     version: @version,
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     source_url: "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/android_device_provisioning"
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
    Automates reseller integration into Zero Touch Provisioning by assigning devices to customers and creating device reports.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/GoogleCloudPlatform/elixir-google-api/tree/master/clients/android_device_provisioning",
        "Homepage" => "https://developers.google.com/zero-touch/"
      }
    ]
  end
end
