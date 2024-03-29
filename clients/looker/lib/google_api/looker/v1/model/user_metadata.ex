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

defmodule GoogleApi.Looker.V1.Model.UserMetadata do
  @moduledoc """
  Metadata about users for a Looker instance.

  ## Attributes

  *   `additionalDeveloperUserCount` (*type:* `integer()`, *default:* `nil`) - Optional. The number of additional developer users the instance owner has purchased.
  *   `additionalStandardUserCount` (*type:* `integer()`, *default:* `nil`) - Optional. The number of additional standard users the instance owner has purchased.
  *   `additionalViewerUserCount` (*type:* `integer()`, *default:* `nil`) - Optional. The number of additional viewer users the instance owner has purchased.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalDeveloperUserCount => integer() | nil,
          :additionalStandardUserCount => integer() | nil,
          :additionalViewerUserCount => integer() | nil
        }

  field(:additionalDeveloperUserCount)
  field(:additionalStandardUserCount)
  field(:additionalViewerUserCount)
end

defimpl Poison.Decoder, for: GoogleApi.Looker.V1.Model.UserMetadata do
  def decode(value, options) do
    GoogleApi.Looker.V1.Model.UserMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Looker.V1.Model.UserMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
