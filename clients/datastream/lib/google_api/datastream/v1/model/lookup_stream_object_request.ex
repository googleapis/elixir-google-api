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

defmodule GoogleApi.Datastream.V1.Model.LookupStreamObjectRequest do
  @moduledoc """
  Request for looking up a specific stream object by its source object identifier.

  ## Attributes

  *   `sourceObjectIdentifier` (*type:* `GoogleApi.Datastream.V1.Model.SourceObjectIdentifier.t`, *default:* `nil`) - Required. The source object identifier which maps to the stream object.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sourceObjectIdentifier =>
            GoogleApi.Datastream.V1.Model.SourceObjectIdentifier.t() | nil
        }

  field(:sourceObjectIdentifier, as: GoogleApi.Datastream.V1.Model.SourceObjectIdentifier)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.LookupStreamObjectRequest do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.LookupStreamObjectRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.LookupStreamObjectRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
