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

defmodule GoogleApi.Content.V21.Model.MethodQuota do
  @moduledoc """
  The quota information per method in the Content API.

  ## Attributes

  *   `method` (*type:* `String.t`, *default:* `nil`) - Output only. The method name, for example `products.list`. Method name does not contain version because quota can be shared between different API versions of the same method.
  *   `quotaLimit` (*type:* `String.t`, *default:* `nil`) - Output only. The maximum number of calls allowed per day for the method.
  *   `quotaMinuteLimit` (*type:* `String.t`, *default:* `nil`) - Output only. The maximum number of calls allowed per minute for the method.
  *   `quotaUsage` (*type:* `String.t`, *default:* `nil`) - Output only. The current quota usage, meaning the number of calls already made to the method per day. Usage is reset every day at 12 PM midday UTC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :method => String.t() | nil,
          :quotaLimit => String.t() | nil,
          :quotaMinuteLimit => String.t() | nil,
          :quotaUsage => String.t() | nil
        }

  field(:method)
  field(:quotaLimit)
  field(:quotaMinuteLimit)
  field(:quotaUsage)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.MethodQuota do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.MethodQuota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.MethodQuota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
