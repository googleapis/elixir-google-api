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

defmodule GoogleApi.DriveActivity.V2.Model.FieldValue do
  @moduledoc """
  Contains a value of a Field.

  ## Attributes

  *   `date` (*type:* `GoogleApi.DriveActivity.V2.Model.Date.t`, *default:* `nil`) - Date Field value.
  *   `integer` (*type:* `GoogleApi.DriveActivity.V2.Model.Integer.t`, *default:* `nil`) - Integer Field value.
  *   `selection` (*type:* `GoogleApi.DriveActivity.V2.Model.Selection.t`, *default:* `nil`) - Selection Field value.
  *   `selectionList` (*type:* `GoogleApi.DriveActivity.V2.Model.SelectionList.t`, *default:* `nil`) - Selection List Field value.
  *   `text` (*type:* `GoogleApi.DriveActivity.V2.Model.Text.t`, *default:* `nil`) - Text Field value.
  *   `textList` (*type:* `GoogleApi.DriveActivity.V2.Model.TextList.t`, *default:* `nil`) - Text List Field value.
  *   `user` (*type:* `GoogleApi.DriveActivity.V2.Model.SingleUser.t`, *default:* `nil`) - User Field value.
  *   `userList` (*type:* `GoogleApi.DriveActivity.V2.Model.UserList.t`, *default:* `nil`) - User List Field value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :date => GoogleApi.DriveActivity.V2.Model.Date.t() | nil,
          :integer => GoogleApi.DriveActivity.V2.Model.Integer.t() | nil,
          :selection => GoogleApi.DriveActivity.V2.Model.Selection.t() | nil,
          :selectionList => GoogleApi.DriveActivity.V2.Model.SelectionList.t() | nil,
          :text => GoogleApi.DriveActivity.V2.Model.Text.t() | nil,
          :textList => GoogleApi.DriveActivity.V2.Model.TextList.t() | nil,
          :user => GoogleApi.DriveActivity.V2.Model.SingleUser.t() | nil,
          :userList => GoogleApi.DriveActivity.V2.Model.UserList.t() | nil
        }

  field(:date, as: GoogleApi.DriveActivity.V2.Model.Date)
  field(:integer, as: GoogleApi.DriveActivity.V2.Model.Integer)
  field(:selection, as: GoogleApi.DriveActivity.V2.Model.Selection)
  field(:selectionList, as: GoogleApi.DriveActivity.V2.Model.SelectionList)
  field(:text, as: GoogleApi.DriveActivity.V2.Model.Text)
  field(:textList, as: GoogleApi.DriveActivity.V2.Model.TextList)
  field(:user, as: GoogleApi.DriveActivity.V2.Model.SingleUser)
  field(:userList, as: GoogleApi.DriveActivity.V2.Model.UserList)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.FieldValue do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.FieldValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.FieldValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
