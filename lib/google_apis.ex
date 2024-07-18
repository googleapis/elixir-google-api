# Copyright 2017 Google Inc.
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

defmodule GoogleApis do
  @moduledoc """
  This module contains helper functions for downloading and fetching
  API specifications and generating clients from the specifications.
  """

  require Logger
  alias GoogleApis.ApiConfig

  def fetch(api_config) do
    case System.fetch_env("DISCOVERIES_DIR") do
      {:ok, dir} -> fetch_dir(api_config, dir)
      :error -> fetch_discovery(api_config)
    end
  end

  def fetch_dir(api_config, dir) do
    dest_file = ApiConfig.google_spec_file(api_config)
    dam_name = ApiConfig.dam_name(api_config)
    src_file = Path.expand(dam_name, dir)

    with {:ok, body} <- File.read(src_file),
         :ok <- File.mkdir_p(Path.dirname(dest_file)),
         :ok <- File.write(dest_file, body) do
      {:ok, dest_file}
    else
      error -> IO.inspect(error)
    end
  end

  def fetch_discovery(api_config) do
    file = ApiConfig.google_spec_file(api_config)

    with {:ok, {body, _format}} <- GoogleApis.Discovery.fetch(api_config.url),
         :ok <- File.mkdir_p(Path.dirname(file)),
         :ok <- File.write(file, body) do
      {:ok, file}
    else
      error -> IO.inspect(error)
    end
  end

  def generate_client(api_config) do
    generator = Application.get_env(:google_apis, :client_generator)
    generator.generate_client(api_config)
  end

  def format_client(api_config) do
    name = GoogleApis.ApiConfig.library_name(api_config)

    ["clients/#{name}/lib/**/*.{ex,exs}"]
    |> Mix.Tasks.Format.run()
  end

  def publish(api_config) do
    GoogleApis.Publisher.publish(api_config)
  end

  def bump_version(api_config) do
    GoogleApis.Generator.bump_version(api_config)
  end

  def rollback_if_not_significant(api_configs) do
    GoogleApis.Generator.rollback_if_not_significant(api_configs)
  end
end
