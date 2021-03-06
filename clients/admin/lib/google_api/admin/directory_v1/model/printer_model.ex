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

defmodule GoogleApi.Admin.Directory_v1.Model.PrinterModel do
  @moduledoc """
  Printer manufacturer and model

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name. eq. "Brother MFC-8840D"
  *   `makeAndModel` (*type:* `String.t`, *default:* `nil`) - Make and model as represented in "make_and_model" field in Printer object. eq. "brother mfc-8840d"
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - Manufacturer. eq. "Brother"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :makeAndModel => String.t() | nil,
          :manufacturer => String.t() | nil
        }

  field(:displayName)
  field(:makeAndModel)
  field(:manufacturer)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.PrinterModel do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.PrinterModel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.PrinterModel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
