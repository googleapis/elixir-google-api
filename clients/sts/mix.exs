# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.STS.Mixfile do
  use Mix.Project

  @version "0.9.2"

  def project() do
    [
      app: :google_api_sts,
      version: @version,
      elixir: "~> 1.6",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/googleapis/elixir-google-api/tree/master/clients/sts"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.4"},

      {:ex_doc, "~> 0.37", only: :dev}
    ]
  end

  defp description() do
    """
    Security Token Service API client library. The Security Token Service exchanges Google or third-party credentials for a short-lived access token to Google Cloud resources.
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching", "Daniel Azuma"],
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/googleapis/elixir-google-api/tree/master/clients/sts",
        "Homepage" => "http://cloud.google.com/iam/docs/workload-identity-federation"
      }
    ]
  end
end
