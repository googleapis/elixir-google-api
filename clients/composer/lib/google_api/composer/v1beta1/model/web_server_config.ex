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

defmodule GoogleApi.Composer.V1beta1.Model.WebServerConfig do
  @moduledoc """
  The configuration settings for the Airflow web server App Engine instance.

  ## Attributes

  *   `machineType` (*type:* `String.t`, *default:* `nil`) - Optional. Machine type on which Airflow web server is running.
      For example: composer-n1-webserver-2, composer-n1-webserver-4,
      composer-n1-webserver-8.
      If not specified, composer-n1-webserver-2 will be used.
      Value custom is returned only in response, if Airflow web server parameters
      were manually changed to a non-standard values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :machineType => String.t()
        }

  field(:machineType)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.WebServerConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.WebServerConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.WebServerConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
