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

defmodule GoogleApi.ContentWarehouse.V1.Model.CopleySubreferenceResolution do
  @moduledoc """
  Represents a resolution that may be part of a larger compound reference. For example, "my brother's birthday" will have a subreference that may have resolutions for "my brother".

  ## Attributes

  *   `mid` (*type:* `String.t`, *default:* `nil`) - Can be used with PKG Service for looking up metadata about this entity at fulfillment/GenX time.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the entity represented by this resolution.
  *   `resolutionScore` (*type:* `number()`, *default:* `nil`) - A resolution score of 0 indicates that it did not resolve to a real entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mid => String.t() | nil,
          :name => String.t() | nil,
          :resolutionScore => number() | nil
        }

  field(:mid)
  field(:name)
  field(:resolutionScore)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CopleySubreferenceResolution do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CopleySubreferenceResolution.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CopleySubreferenceResolution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
