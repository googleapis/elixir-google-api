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

defmodule GoogleApi.VMMigration.Mixfile do
  use Mix.Project

  @version "0.8.0"

  def project() do
    [
      app: :google_api_vm_migration,
      version: @version,
      elixir: "~> 1.6",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/googleapis/elixir-google-api/tree/master/clients/vm_migration"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.4"},

      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    """
    VM Migration API client library. Use the Migrate to Virtual Machines API to programmatically migrate workloads. 
    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching", "Daniel Azuma"],
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/googleapis/elixir-google-api/tree/master/clients/vm_migration",
        "Homepage" => "https://cloud.google.com/migrate/virtual-machines"
      }
    ]
  end
end
