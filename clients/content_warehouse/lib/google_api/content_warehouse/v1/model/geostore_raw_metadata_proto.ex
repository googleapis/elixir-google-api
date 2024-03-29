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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreRawMetadataProto do
  @moduledoc """


  ## Attributes

  *   `conflationMethod` (*type:* `String.t`, *default:* `nil`) - Method to use when conflating together RawDataProto values at the same key NB: If you add a new ConflationMethod, then you must add the corresponding logic to MergeRawData to conflate the RawDataProto values using this method.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Self-contained documentation about what this field represents and how its values are encoded.
  *   `key` (*type:* `String.t`, *default:* `nil`) - The key being described.
  *   `label` (*type:* `String.t`, *default:* `nil`) - A longer, human-readable name associated with this key. The label might be used in a data explorer tool, for example.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conflationMethod => String.t() | nil,
          :description => String.t() | nil,
          :key => String.t() | nil,
          :label => String.t() | nil
        }

  field(:conflationMethod)
  field(:description)
  field(:key)
  field(:label)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRawMetadataProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreRawMetadataProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreRawMetadataProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
