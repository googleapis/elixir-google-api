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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1HttpsLatencyRoutineData do
  @moduledoc """
  Data that describes the result of the HTTPS latency diagnostics routine, with the HTTPS requests issued to Google websites.

  ## Attributes

  *   `latency` (*type:* `String.t`, *default:* `nil`) - Output only. HTTPS latency if routine succeeded or failed because of HIGH_LATENCY or VERY_HIGH_LATENCY.
  *   `problem` (*type:* `String.t`, *default:* `nil`) - Output only. HTTPS latency routine problem if a problem occurred.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :latency => String.t() | nil,
          :problem => String.t() | nil
        }

  field(:latency)
  field(:problem)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1HttpsLatencyRoutineData do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1HttpsLatencyRoutineData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1HttpsLatencyRoutineData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
