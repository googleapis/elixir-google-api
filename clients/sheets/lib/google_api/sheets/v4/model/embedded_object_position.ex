# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition do
  @moduledoc """
  The position of an embedded object such as a chart.

  ## Attributes

  *   `newSheet` (*type:* `boolean()`, *default:* `nil`) - If true, the embedded object is put on a new sheet whose ID
      is chosen for you. Used only when writing.
  *   `overlayPosition` (*type:* `GoogleApi.Sheets.V4.Model.OverlayPosition.t`, *default:* `nil`) - The position at which the object is overlaid on top of a grid.
  *   `sheetId` (*type:* `integer()`, *default:* `nil`) - The sheet this is on. Set only if the embedded object
      is on its own sheet. Must be non-negative.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newSheet => boolean(),
          :overlayPosition => GoogleApi.Sheets.V4.Model.OverlayPosition.t(),
          :sheetId => integer()
        }

  field(:newSheet)
  field(:overlayPosition, as: GoogleApi.Sheets.V4.Model.OverlayPosition)
  field(:sheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.EmbeddedObjectPosition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
