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

defmodule GoogleApi.Games.V1.Model.Snapshot do
  @moduledoc """
  This is a JSON template for an snapshot object.

  ## Attributes

  - coverImage (GoogleApi.Games.V1.Model.SnapshotImage.t): The cover image of this snapshot. May be absent if there is no image. Defaults to `nil`.
  - description (String.t): The description of this snapshot. Defaults to `nil`.
  - driveId (String.t): The ID of the file underlying this snapshot in the Drive API. Only present if the snapshot is a view on a Drive file and the file is owned by the caller. Defaults to `nil`.
  - durationMillis (String.t): The duration associated with this snapshot, in millis. Defaults to `nil`.
  - id (String.t): The ID of the snapshot. Defaults to `nil`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#snapshot. Defaults to `games#snapshot`.
  - lastModifiedMillis (String.t): The timestamp (in millis since Unix epoch) of the last modification to this snapshot. Defaults to `nil`.
  - progressValue (String.t): The progress value (64-bit integer set by developer) associated with this snapshot. Defaults to `nil`.
  - title (String.t): The title of this snapshot. Defaults to `nil`.
  - type (String.t): The type of this snapshot.
  Possible values are:  
  - "SAVE_GAME" - A snapshot representing a save game. Defaults to `nil`.
  - uniqueName (String.t): The unique name provided when the snapshot was created. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :coverImage => GoogleApi.Games.V1.Model.SnapshotImage.t(),
          :description => String.t(),
          :driveId => String.t(),
          :durationMillis => String.t(),
          :id => String.t(),
          :kind => String.t(),
          :lastModifiedMillis => String.t(),
          :progressValue => String.t(),
          :title => String.t(),
          :type => String.t(),
          :uniqueName => String.t()
        }

  field(:coverImage, as: GoogleApi.Games.V1.Model.SnapshotImage)
  field(:description)
  field(:driveId)
  field(:durationMillis)
  field(:id)
  field(:kind)
  field(:lastModifiedMillis)
  field(:progressValue)
  field(:title)
  field(:type)
  field(:uniqueName)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.Snapshot do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.Snapshot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.Snapshot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
