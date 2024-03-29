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

defmodule GoogleApi.OnDemandScanning.V1.Model.WindowsUpdate do
  @moduledoc """
  Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.

  ## Attributes

  *   `categories` (*type:* `list(GoogleApi.OnDemandScanning.V1.Model.Category.t)`, *default:* `nil`) - The list of categories to which the update belongs.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The localized description of the update.
  *   `identity` (*type:* `GoogleApi.OnDemandScanning.V1.Model.Identity.t`, *default:* `nil`) - Required - The unique identifier for the update.
  *   `kbArticleIds` (*type:* `list(String.t)`, *default:* `nil`) - The Microsoft Knowledge Base article IDs that are associated with the update.
  *   `lastPublishedTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - The last published timestamp of the update.
  *   `supportUrl` (*type:* `String.t`, *default:* `nil`) - The hyperlink to the support information for the update.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The localized title of the update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categories => list(GoogleApi.OnDemandScanning.V1.Model.Category.t()) | nil,
          :description => String.t() | nil,
          :identity => GoogleApi.OnDemandScanning.V1.Model.Identity.t() | nil,
          :kbArticleIds => list(String.t()) | nil,
          :lastPublishedTimestamp => DateTime.t() | nil,
          :supportUrl => String.t() | nil,
          :title => String.t() | nil
        }

  field(:categories, as: GoogleApi.OnDemandScanning.V1.Model.Category, type: :list)
  field(:description)
  field(:identity, as: GoogleApi.OnDemandScanning.V1.Model.Identity)
  field(:kbArticleIds, type: :list)
  field(:lastPublishedTimestamp, as: DateTime)
  field(:supportUrl)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.WindowsUpdate do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.WindowsUpdate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.WindowsUpdate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
