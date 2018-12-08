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

defmodule GoogleApis.Converter.ApiSpecConverter do
  @behaviour GoogleApis.Converter
  alias GoogleApis.ApiConfig
  require Logger

  def convert(api_config = %ApiConfig{}) do
    file = ApiConfig.google_spec_file(api_config)
    output = ApiConfig.openapi_spec_file(api_config)
    Logger.info("Converting #{file} to #{output}")

    with {swagger, 0} <-
           System.cmd("npm", [
             "run",
             "-s",
             "api-spec-converter",
             "--",
             file,
             "-f",
             "google",
             "-t",
             "swagger_2"
           ]),
         :ok <- File.write(output, swagger) do
      {:ok, output}
    else
      {"", exit_code} -> {:error, "convert failed. exit code #{exit_code}"}
      {:error, reason} -> {:error, reason}
    end
  end
end
