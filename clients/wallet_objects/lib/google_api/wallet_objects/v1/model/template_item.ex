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

defmodule GoogleApi.WalletObjects.V1.Model.TemplateItem do
  @moduledoc """


  ## Attributes

  *   `firstValue` (*type:* `GoogleApi.WalletObjects.V1.Model.FieldSelector.t`, *default:* `nil`) - A reference to a field to display. If both `firstValue` and `secondValue` are populated, they will both appear as one item with a slash between them. For example, values A and B would be shown as "A / B".
  *   `predefinedItem` (*type:* `String.t`, *default:* `nil`) - A predefined item to display. Only one of `firstValue` or `predefinedItem` may be set.
  *   `secondValue` (*type:* `GoogleApi.WalletObjects.V1.Model.FieldSelector.t`, *default:* `nil`) - A reference to a field to display. This may only be populated if the `firstValue` field is populated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :firstValue => GoogleApi.WalletObjects.V1.Model.FieldSelector.t() | nil,
          :predefinedItem => String.t() | nil,
          :secondValue => GoogleApi.WalletObjects.V1.Model.FieldSelector.t() | nil
        }

  field(:firstValue, as: GoogleApi.WalletObjects.V1.Model.FieldSelector)
  field(:predefinedItem)
  field(:secondValue, as: GoogleApi.WalletObjects.V1.Model.FieldSelector)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.TemplateItem do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.TemplateItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.TemplateItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
