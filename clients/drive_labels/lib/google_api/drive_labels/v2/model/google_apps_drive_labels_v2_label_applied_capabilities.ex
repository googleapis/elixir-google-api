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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LabelAppliedCapabilities do
  @moduledoc """
  The capabilities a user has on this label's applied metadata.

  ## Attributes

  *   `canApply` (*type:* `boolean()`, *default:* `nil`) - Whether the user can apply this label to items.
  *   `canRead` (*type:* `boolean()`, *default:* `nil`) - Whether the user can read applied metadata related to this label.
  *   `canRemove` (*type:* `boolean()`, *default:* `nil`) - Whether the user can remove this label from items.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canApply => boolean() | nil,
          :canRead => boolean() | nil,
          :canRemove => boolean() | nil
        }

  field(:canApply)
  field(:canRead)
  field(:canRemove)
end

defimpl Poison.Decoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LabelAppliedCapabilities do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LabelAppliedCapabilities.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LabelAppliedCapabilities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
