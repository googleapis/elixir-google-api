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

defmodule GoogleApi.Compute.V1.Model.DiskParams do
  @moduledoc """
  Additional disk params.

  ## Attributes

  *   `resourceManagerTags` (*type:* `map()`, *default:* `nil`) - Resource manager tags to be bound to the disk. Tag keys and values have the same definition as resource manager tags. Keys must be in the format `tagKeys/{tag_key_id}`, and values are in the format `tagValues/456`. The field is ignored (both PUT & PATCH) when empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resourceManagerTags => map() | nil
        }

  field(:resourceManagerTags, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.DiskParams do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.DiskParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.DiskParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
