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

defmodule GoogleApi.FirebaseRules.V1.Model.Metadata do
  @moduledoc """
  Metadata for a Ruleset.

  ## Attributes

  *   `services` (*type:* `list(String.t)`, *default:* `nil`) - Services that this ruleset has declarations for (e.g., "cloud.firestore"). There may be 0+ of these.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :services => list(String.t())
        }

  field(:services, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseRules.V1.Model.Metadata do
  def decode(value, options) do
    GoogleApi.FirebaseRules.V1.Model.Metadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseRules.V1.Model.Metadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
