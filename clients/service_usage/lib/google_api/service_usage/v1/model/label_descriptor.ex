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

defmodule GoogleApi.ServiceUsage.V1.Model.LabelDescriptor do
  @moduledoc """
  A description of a label.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A human-readable description for the label.
  *   `key` (*type:* `String.t`, *default:* `nil`) - The label key.
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - The type of data that can be assigned to the label.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :key => String.t() | nil,
          :valueType => String.t() | nil
        }

  field(:description)
  field(:key)
  field(:valueType)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.LabelDescriptor do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.LabelDescriptor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.LabelDescriptor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
