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

defmodule GoogleApi.ServiceBroker.Mixfile do
  use Mix.Project

  @version "0.12.0"

  def project() do
    [
      app: :google_api_service_broker,
      version: @version,
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/googleapis/elixir-google-api/tree/master/clients/service_broker"
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp deps() do
    [
      {:google_gax, "~> 0.2"},

      {:ex_doc, "~> 0.16", only: :dev}
    ]
  end

  defp description() do
    """
    Service Broker API client library. The Google Cloud Platform Service Broker API provides Google hosted
implementation of the Open Service Broker API
(https://www.openservicebrokerapi.org/).

    """
  end

  defp package() do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE"],
      maintainers: ["Jeff Ching", "Daniel Azuma"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/googleapis/elixir-google-api/tree/master/clients/service_broker",
        "Homepage" => "https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker"
      }
    ]
  end
end
