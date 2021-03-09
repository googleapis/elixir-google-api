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

defmodule GoogleApi.People.V1.Model.Tagline do
  @moduledoc """
  **DEPRECATED**: No data will be returned A brief one-line description of the person.

  ## Attributes

  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the tagline.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The tagline.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t() | nil,
          :value => String.t() | nil
        }

  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Tagline do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Tagline.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Tagline do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
