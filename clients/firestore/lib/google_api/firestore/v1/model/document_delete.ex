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

defmodule GoogleApi.Firestore.V1.Model.DocumentDelete do
  @moduledoc """
  A Document has been deleted. May be the result of multiple writes, including updates, the last of which deleted the Document. Multiple DocumentDelete messages may be returned for the same logical delete, if multiple targets are affected.

  ## Attributes

  *   `document` (*type:* `String.t`, *default:* `nil`) - The resource name of the Document that was deleted.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - The read timestamp at which the delete was observed. Greater or equal to the `commit_time` of the delete.
  *   `removedTargetIds` (*type:* `list(integer())`, *default:* `nil`) - A set of target IDs for targets that previously matched this entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document => String.t() | nil,
          :readTime => DateTime.t() | nil,
          :removedTargetIds => list(integer()) | nil
        }

  field(:document)
  field(:readTime, as: DateTime)
  field(:removedTargetIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.DocumentDelete do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.DocumentDelete.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.DocumentDelete do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
