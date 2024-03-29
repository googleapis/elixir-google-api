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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1UserPrintReport do
  @moduledoc """
  Report for CountPrintJobsByUser, contains printing statistics for a user. Contains the number of printers, the number of devices used to initiate print jobs, and the number of print jobs initiated.

  ## Attributes

  *   `deviceCount` (*type:* `String.t`, *default:* `nil`) - Number of chrome devices that have been used to initiate print jobs by the user.
  *   `jobCount` (*type:* `String.t`, *default:* `nil`) - Number of print jobs initiated by the user.
  *   `printerCount` (*type:* `String.t`, *default:* `nil`) - Number of printers used by the user.
  *   `userEmail` (*type:* `String.t`, *default:* `nil`) - The primary e-mail address of the user.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - The unique Directory API ID of the user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceCount => String.t() | nil,
          :jobCount => String.t() | nil,
          :printerCount => String.t() | nil,
          :userEmail => String.t() | nil,
          :userId => String.t() | nil
        }

  field(:deviceCount)
  field(:jobCount)
  field(:printerCount)
  field(:userEmail)
  field(:userId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1UserPrintReport do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1UserPrintReport.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1UserPrintReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
