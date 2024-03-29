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

defmodule GoogleApi.CloudSupport.V2beta.Model.Blobstore2Info do
  @moduledoc """
  # gdata.* are outside protos with mising documentation

  ## Attributes

  *   `blobGeneration` (*type:* `String.t`, *default:* `nil`) - # gdata.* are outside protos with mising documentation
  *   `blobId` (*type:* `String.t`, *default:* `nil`) - # gdata.* are outside protos with mising documentation
  *   `downloadReadHandle` (*type:* `String.t`, *default:* `nil`) - # gdata.* are outside protos with mising documentation
  *   `readToken` (*type:* `String.t`, *default:* `nil`) - # gdata.* are outside protos with mising documentation
  *   `uploadMetadataContainer` (*type:* `String.t`, *default:* `nil`) - # gdata.* are outside protos with mising documentation
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobGeneration => String.t() | nil,
          :blobId => String.t() | nil,
          :downloadReadHandle => String.t() | nil,
          :readToken => String.t() | nil,
          :uploadMetadataContainer => String.t() | nil
        }

  field(:blobGeneration)
  field(:blobId)
  field(:downloadReadHandle)
  field(:readToken)
  field(:uploadMetadataContainer)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSupport.V2beta.Model.Blobstore2Info do
  def decode(value, options) do
    GoogleApi.CloudSupport.V2beta.Model.Blobstore2Info.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSupport.V2beta.Model.Blobstore2Info do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
