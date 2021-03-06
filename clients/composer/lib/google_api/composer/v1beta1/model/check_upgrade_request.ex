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

defmodule GoogleApi.Composer.V1beta1.Model.CheckUpgradeRequest do
  @moduledoc """
  Request to check whether image upgrade will succeed.

  ## Attributes

  *   `imageVersion` (*type:* `String.t`, *default:* `nil`) - The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression `composer-([0-9]+\\.[0-9]+\\.[0-9]+|latest)-airflow-[0-9]+\\.[0-9]+(\\.[0-9]+.*)?`. When used as input, the server also checks if the provided version is supported and denies the request for an unsupported version. The Cloud Composer portion of the version is a [semantic version](https://semver.org) or `latest`. When the patch version is omitted, the current Cloud Composer patch version is selected. When `latest` is provided instead of an explicit version number, the server replaces `latest` with the current Cloud Composer version and stores that version number in the same field. The portion of the image version that follows `airflow-` is an official Apache Airflow repository [release name](https://github.com/apache/incubator-airflow/releases). See also [Version List] (/composer/docs/concepts/versioning/composer-versions).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageVersion => String.t() | nil
        }

  field(:imageVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.CheckUpgradeRequest do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.CheckUpgradeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.CheckUpgradeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
