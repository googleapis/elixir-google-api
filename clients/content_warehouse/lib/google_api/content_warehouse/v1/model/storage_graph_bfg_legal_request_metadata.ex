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

defmodule GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgLegalRequestMetadata do
  @moduledoc """


  ## Attributes

  *   `bugId` (*type:* `String.t`, *default:* `nil`) - The buganizer ID associated with this legal request. This is required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bugId => String.t() | nil
        }

  field(:bugId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgLegalRequestMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgLegalRequestMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgLegalRequestMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end