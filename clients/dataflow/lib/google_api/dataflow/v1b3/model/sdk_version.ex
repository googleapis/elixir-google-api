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

defmodule GoogleApi.Dataflow.V1b3.Model.SdkVersion do
  @moduledoc """
  The version of the SDK used to run the job.

  ## Attributes

  *   `bugs` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.SdkBug.t)`, *default:* `nil`) - Output only. Known bugs found in this SDK version.
  *   `sdkSupportStatus` (*type:* `String.t`, *default:* `nil`) - The support status for this SDK version.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the SDK used to run the job.
  *   `versionDisplayName` (*type:* `String.t`, *default:* `nil`) - A readable string describing the version of the SDK.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bugs => list(GoogleApi.Dataflow.V1b3.Model.SdkBug.t()) | nil,
          :sdkSupportStatus => String.t() | nil,
          :version => String.t() | nil,
          :versionDisplayName => String.t() | nil
        }

  field(:bugs, as: GoogleApi.Dataflow.V1b3.Model.SdkBug, type: :list)
  field(:sdkSupportStatus)
  field(:version)
  field(:versionDisplayName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.SdkVersion do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.SdkVersion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.SdkVersion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
