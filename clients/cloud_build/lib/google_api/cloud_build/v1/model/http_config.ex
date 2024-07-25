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

defmodule GoogleApi.CloudBuild.V1.Model.HttpConfig do
  @moduledoc """
  HttpConfig is a configuration for HTTP related git operations.

  ## Attributes

  *   `proxySecretVersionName` (*type:* `String.t`, *default:* `nil`) - SecretVersion resource of the HTTP proxy URL. The Service Account used in the build (either the default Service Account or user-specified Service Account) should have `secretmanager.versions.access` permissions on this secret. The proxy URL should be in format `protocol://@]proxyhost[:port]`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :proxySecretVersionName => String.t() | nil
        }

  field(:proxySecretVersionName)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.HttpConfig do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.HttpConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.HttpConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
