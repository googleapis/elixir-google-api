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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptions do
  @moduledoc """
  Options for the selection field type.

  ## Attributes

  *   `choices` (*type:* `list(GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice.t)`, *default:* `nil`) - The options available for this selection field. The list order is consistent, and modified with `insert_before_choice`.
  *   `listOptions` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldListOptions.t`, *default:* `nil`) - When specified, indicates this field supports a list of values. Once the field is published, this cannot be changed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :choices =>
            list(
              GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice.t()
            )
            | nil,
          :listOptions =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldListOptions.t() | nil
        }

  field(:choices,
    as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice,
    type: :list
  )

  field(:listOptions, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldListOptions)
end

defimpl Poison.Decoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptions do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end