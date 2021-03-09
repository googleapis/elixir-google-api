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

defmodule GoogleApi.Sheets.V4.Model.AddSlicerRequest do
  @moduledoc """
  Adds a slicer to a sheet in the spreadsheet.

  ## Attributes

  *   `slicer` (*type:* `GoogleApi.Sheets.V4.Model.Slicer.t`, *default:* `nil`) - The slicer that should be added to the spreadsheet, including the position where it should be placed. The slicerId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a slicer that already exists.)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :slicer => GoogleApi.Sheets.V4.Model.Slicer.t() | nil
        }

  field(:slicer, as: GoogleApi.Sheets.V4.Model.Slicer)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AddSlicerRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AddSlicerRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AddSlicerRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
