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

defmodule GoogleApi.Composer.V1beta1.Model.Environment do
  @moduledoc """
  An environment for running orchestration tasks.

  ## Attributes

  *   `config` (*type:* `GoogleApi.Composer.V1beta1.Model.EnvironmentConfig.t`, *default:* `nil`) - Configuration parameters for this environment.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this environment was created.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User-defined labels for this environment.
      The labels map can contain no more than 64 entries. Entries of the labels
      map are UTF8 strings that comply with the following restrictions:

      * Keys must conform to regexp: \\p{Ll}\\p{Lo}{0,62}
      * Values must conform to regexp:  [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}
      * Both keys and values are additionally constrained to be <= 128 bytes in
      size.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the environment, in the form:
      "projects/{projectId}/locations/{locationId}/environments/{environmentId}"

      EnvironmentId must start with a lowercase letter followed by up to 63
      lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current state of the environment.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this environment was last modified.
  *   `uuid` (*type:* `String.t`, *default:* `nil`) - Output only. The UUID (Universally Unique IDentifier) associated with this environment.
      This value is generated when the environment is created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.Composer.V1beta1.Model.EnvironmentConfig.t(),
          :createTime => DateTime.t(),
          :labels => map(),
          :name => String.t(),
          :state => String.t(),
          :updateTime => DateTime.t(),
          :uuid => String.t()
        }

  field(:config, as: GoogleApi.Composer.V1beta1.Model.EnvironmentConfig)
  field(:createTime, as: DateTime)
  field(:labels, type: :map)
  field(:name)
  field(:state)
  field(:updateTime, as: DateTime)
  field(:uuid)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.Environment do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
