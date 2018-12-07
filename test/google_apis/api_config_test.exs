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

defmodule GoogleApis.ApiConfigTest do
  use ExUnit.Case
  doctest GoogleApis.ApiConfig

  alias GoogleApis.ApiConfig

  test "load all configs" do
    configs = ApiConfig.load_all()

    Enum.each(configs, fn config -> assert %ApiConfig{} = config end)
    assert 2 < Enum.count(configs)
  end

  test "load subset of configs" do
    configs = ApiConfig.load("CloudTrace")
    assert 2 == Enum.count(configs)
  end

  test "file name" do
    assert "foobar-v1.4.json" == ApiConfig.file(%ApiConfig{name: "foobar", version: "v1.4"})
  end

  test "app_name" do
    assert "google_api_cloud_trace" == ApiConfig.app_name(%ApiConfig{name: "CloudTrace"})
  end

  test "library_name" do
    assert "cloud_trace" == ApiConfig.library_name(%ApiConfig{name: "CloudTrace"})
  end

  test "library_namespace" do
    assert "GoogleApi.CloudTrace.V2" ==
             ApiConfig.library_namespace(%ApiConfig{name: "CloudTrace", version: "v2"})
  end

  test "library_namespace dot version" do
    assert "GoogleApi.AdSense.V14" ==
             ApiConfig.library_namespace(%ApiConfig{name: "AdSense", version: "v1.4"})
  end

  test "module_version should handle normal versions" do
    assert "V2" == ApiConfig.module_version(%ApiConfig{version: "v2"})
  end

  test "module_version should handle point versions" do
    assert "V14" == ApiConfig.module_version(%ApiConfig{version: "v1.4"})
  end

  test "module_version should handle beta versions" do
    assert "V2beta2" == ApiConfig.module_version(%ApiConfig{version: "v2beta2"})
  end
end
