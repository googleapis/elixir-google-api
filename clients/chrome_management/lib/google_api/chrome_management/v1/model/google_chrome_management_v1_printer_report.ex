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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1PrinterReport do
  @moduledoc """
  Report for CountPrintJobsByPrinter, contains statistics on printer usage. Contains the total number of print jobs initiated with this printer, the number of users and the number of devices that have initiated at least one print job with this printer.

  ## Attributes

  *   `deviceCount` (*type:* `String.t`, *default:* `nil`) - Number of chrome devices that have been used to send print jobs to the specified printer.
  *   `jobCount` (*type:* `String.t`, *default:* `nil`) - Number of print jobs sent to the printer.
  *   `printer` (*type:* `String.t`, *default:* `nil`) - Printer name.
  *   `printerId` (*type:* `String.t`, *default:* `nil`) - Printer API ID.
  *   `printerModel` (*type:* `String.t`, *default:* `nil`) - Printer model.
  *   `userCount` (*type:* `String.t`, *default:* `nil`) - Number of users that have sent print jobs to the printer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceCount => String.t() | nil,
          :jobCount => String.t() | nil,
          :printer => String.t() | nil,
          :printerId => String.t() | nil,
          :printerModel => String.t() | nil,
          :userCount => String.t() | nil
        }

  field(:deviceCount)
  field(:jobCount)
  field(:printer)
  field(:printerId)
  field(:printerModel)
  field(:userCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1PrinterReport do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1PrinterReport.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1PrinterReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
