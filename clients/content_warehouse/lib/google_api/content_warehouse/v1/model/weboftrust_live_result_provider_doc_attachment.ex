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

defmodule GoogleApi.ContentWarehouse.V1.Model.WeboftrustLiveResultProviderDocAttachment do
  @moduledoc """
  Per-provider attachment of a LiveResult. Used to identify pages for which result-based triggering of Live Results should appear. Theoretically there can be more than one attachment per web document, so we keep them as a repeated field of the LiveResultsDocAttachment. Next ID: 4

  ## Attributes

  *   `providerId` (*type:* `String.t`, *default:* `nil`) - 
  *   `tag` (*type:* `String.t`, *default:* `nil`) - Tag that specifies the use-case within provider's data. It appears as a string in Alexandria signal and in the DocJoins. During the indexing stage this field will be converted to a 64-bit fingerprint to save space. See the "tag_fp" field, below.
  *   `tagFp` (*type:* `String.t`, *default:* `nil`) - A fingerprint of the "tag" field, automatically calculated during the indexing stage. Will be used as a key for fetching the data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :providerId => String.t() | nil,
          :tag => String.t() | nil,
          :tagFp => String.t() | nil
        }

  field(:providerId)
  field(:tag)
  field(:tagFp)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.WeboftrustLiveResultProviderDocAttachment do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.WeboftrustLiveResultProviderDocAttachment.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.WeboftrustLiveResultProviderDocAttachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end