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

defmodule GoogleApis.SwaggerConfigTest do
  use ExUnit.Case
  doctest GoogleApis.SwaggerConfig
  alias GoogleApis.{ApiConfig, SwaggerConfig}

  test "from_api_config" do
    assert %SwaggerConfig{
             licenseHeader: license_header,
             invokerPackage: "GoogleApi.CloudTrace.V2",
             packageName: "google_api_cloud_trace"
           } = SwaggerConfig.from_api_config(%ApiConfig{name: "CloudTrace", version: "v2"})

    assert license_header =~ "Copyright 2017 Google Inc."
  end
end
