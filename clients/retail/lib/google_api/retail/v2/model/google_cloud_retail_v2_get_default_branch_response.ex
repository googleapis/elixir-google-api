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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2GetDefaultBranchResponse do
  @moduledoc """
  Response message of CatalogService.GetDefaultBranch.

  ## Attributes

  *   `branch` (*type:* `String.t`, *default:* `nil`) - Full resource name of the branch id currently set as default branch.
  *   `note` (*type:* `String.t`, *default:* `nil`) - This corresponds to SetDefaultBranchRequest.note field, when this branch was set as default.
  *   `setTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when this branch is set to default.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :branch => String.t() | nil,
          :note => String.t() | nil,
          :setTime => DateTime.t() | nil
        }

  field(:branch)
  field(:note)
  field(:setTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2GetDefaultBranchResponse do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2GetDefaultBranchResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2GetDefaultBranchResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
