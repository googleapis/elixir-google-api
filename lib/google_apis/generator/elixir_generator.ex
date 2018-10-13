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

defmodule GoogleApis.Generator.ElixirGenerator do
  @behaviour GoogleApis.Generator
  alias GoogleApis.ApiConfig

  def generate_client(api_config) do
    filename = ApiConfig.file(api_config)
    client_library_name = ApiConfig.library_name(api_config)

    rest_description =
      api_config
      |> ApiConfig.google_spec_file
      |> File.read!
      |> Poison.decode!(as: %GoogleApi.Discovery.V1.Model.RestDescription{})

    IO.inspect rest_description.resources
  end

end