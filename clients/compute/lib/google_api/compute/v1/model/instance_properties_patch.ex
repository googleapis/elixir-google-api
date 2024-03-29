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

defmodule GoogleApi.Compute.V1.Model.InstancePropertiesPatch do
  @moduledoc """
  Represents the change that you want to make to the instance properties.

  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - The label key-value pairs that you want to patch onto the instance.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - The metadata key-value pairs that you want to patch onto the instance. For more information, see Project and instance metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map() | nil,
          :metadata => map() | nil
        }

  field(:labels, type: :map)
  field(:metadata, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstancePropertiesPatch do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstancePropertiesPatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstancePropertiesPatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
