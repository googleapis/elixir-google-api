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

defmodule GoogleApi.People.V1.Model.Gender do
  @moduledoc """
  A person's gender.

  ## Attributes

  *   `addressMeAs` (*type:* `String.t`, *default:* `nil`) - Free form text field for pronouns that should be used to address the person. Common values are: * `he`/`him` * `she`/`her` * `they`/`them`
  *   `formattedValue` (*type:* `String.t`, *default:* `nil`) - Output only. The value of the gender translated and formatted in the viewer's account locale or the `Accept-Language` HTTP header locale. Unspecified or custom value are not localized.
  *   `metadata` (*type:* `GoogleApi.People.V1.Model.FieldMetadata.t`, *default:* `nil`) - Metadata about the gender.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The gender for the person. The gender can be custom or one of these predefined values: * `male` * `female` * `unspecified`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressMeAs => String.t() | nil,
          :formattedValue => String.t() | nil,
          :metadata => GoogleApi.People.V1.Model.FieldMetadata.t() | nil,
          :value => String.t() | nil
        }

  field(:addressMeAs)
  field(:formattedValue)
  field(:metadata, as: GoogleApi.People.V1.Model.FieldMetadata)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.Gender do
  def decode(value, options) do
    GoogleApi.People.V1.Model.Gender.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.Gender do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
