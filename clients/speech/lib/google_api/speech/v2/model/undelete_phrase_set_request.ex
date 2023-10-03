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

defmodule GoogleApi.Speech.V2.Model.UndeletePhraseSetRequest do
  @moduledoc """
  Request message for the UndeletePhraseSet method.

  ## Attributes
  
  *   `etag` (*type:* `String.t`, *default:* `nil`) - This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The name of the PhraseSet to undelete. Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}`
  *   `validateOnly` (*type:* `boolean()`, *default:* `nil`) - If set, validate the request and preview the undeleted PhraseSet, but do not actually undelete it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    
      :"etag" => String.t | nil,
    
      :"name" => String.t | nil,
    
      :"validateOnly" => boolean() | nil,
    
  }
  
  field(:"etag")
  field(:"name")
  field(:"validateOnly")
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V2.Model.UndeletePhraseSetRequest do
  def decode(value, options) do
    GoogleApi.Speech.V2.Model.UndeletePhraseSetRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V2.Model.UndeletePhraseSetRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
