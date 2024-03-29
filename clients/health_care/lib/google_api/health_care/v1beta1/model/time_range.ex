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

defmodule GoogleApi.HealthCare.V1beta1.Model.TimeRange do
  @moduledoc """
  Apply consents given by patients whose most recent consent changes are in the time range. Note that after identifying these patients, the server applies all Consent resources given by those patients, not just the Consent resources within the timestamp in the range.

  ## Attributes

  *   `end` (*type:* `String.t`, *default:* `nil`) - Optional. The latest consent change time, in format YYYY-MM-DDThh:mm:ss.sss+zz:zz If not specified, the system uses the time when ApplyConsents was called.
  *   `start` (*type:* `String.t`, *default:* `nil`) - Optional. The earliest consent change time, in format YYYY-MM-DDThh:mm:ss.sss+zz:zz If not specified, the system uses the FHIR store creation time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :end => String.t() | nil,
          :start => String.t() | nil
        }

  field(:end)
  field(:start)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.TimeRange do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.TimeRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.TimeRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
