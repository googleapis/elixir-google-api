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

defmodule GoogleApi.Sheets.V4.Model.AddBandingRequest do
  @moduledoc """
  Adds a new banded range to the spreadsheet.

  ## Attributes

  *   `bandedRange` (*type:* `GoogleApi.Sheets.V4.Model.BandedRange.t`, *default:* `nil`) - The banded range to add. The bandedRangeId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a range that already exists.)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bandedRange => GoogleApi.Sheets.V4.Model.BandedRange.t() | nil
        }

  field(:bandedRange, as: GoogleApi.Sheets.V4.Model.BandedRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AddBandingRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AddBandingRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AddBandingRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
