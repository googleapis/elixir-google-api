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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldAppliedCapabilities do
  @moduledoc """
  The capabilities related to this field on applied metadata.

  ## Attributes

  *   `canRead` (*type:* `boolean()`, *default:* `nil`) - Whether the user can read related applied metadata on items.
  *   `canSearch` (*type:* `boolean()`, *default:* `nil`) - Whether the user can search for Drive items referencing this field.
  *   `canWrite` (*type:* `boolean()`, *default:* `nil`) - Whether the user can set this field on Drive items.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canRead => boolean() | nil,
          :canSearch => boolean() | nil,
          :canWrite => boolean() | nil
        }

  field(:canRead)
  field(:canSearch)
  field(:canWrite)
end

defimpl Poison.Decoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldAppliedCapabilities do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldAppliedCapabilities.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldAppliedCapabilities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
