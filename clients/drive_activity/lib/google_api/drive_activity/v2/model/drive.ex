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

defmodule GoogleApi.DriveActivity.V2.Model.Drive do
  @moduledoc """
  Information about a shared drive.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the shared drive. The format is "COLLECTION_ID/DRIVE_ID". Clients should not assume a specific collection ID for this resource name.
  *   `root` (*type:* `GoogleApi.DriveActivity.V2.Model.DriveItem.t`, *default:* `nil`) - The root of this shared drive.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the shared drive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :root => GoogleApi.DriveActivity.V2.Model.DriveItem.t() | nil,
          :title => String.t() | nil
        }

  field(:name)
  field(:root, as: GoogleApi.DriveActivity.V2.Model.DriveItem)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.DriveActivity.V2.Model.Drive do
  def decode(value, options) do
    GoogleApi.DriveActivity.V2.Model.Drive.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveActivity.V2.Model.Drive do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
