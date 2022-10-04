#!/usr/bin/env bash
# Copyright 2018 Google Inc.
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

set -eo pipefail

pushd $(dirname "$0")/../

export HEX_API_KEY=$(cat ${KOKORO_KEYSTORE_DIR}/73713_elixir_hex_apikey)

mix deps.get

# Disabled for Google Cloud Next release freeze.
# TODO: Re-enable on Oct 14, 2022
# mix google_apis.publish
