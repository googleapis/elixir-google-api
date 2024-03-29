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

defmodule GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgPublicInformationMetadata do
  @moduledoc """


  ## Attributes

  *   `attributionUrl` (*type:* `list(String.t)`, *default:* `nil`) - Publicly-visible URLs claiming this fact. Can not be empty -- at least one URL must be provided.
  *   `lastVerifiedDate` (*type:* `String.t`, *default:* `nil`) - Most recent date at which 'attribution_url's were verified, as UNIX epoch time in milliseconds. This is required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributionUrl => list(String.t()) | nil,
          :lastVerifiedDate => String.t() | nil
        }

  field(:attributionUrl, type: :list)
  field(:lastVerifiedDate)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgPublicInformationMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgPublicInformationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgPublicInformationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
