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

defmodule GoogleApi.Content.V2.Model.AccountStatusProducts do
  @moduledoc """


  ## Attributes

  *   `channel` (*type:* `String.t`, *default:* `nil`) - The channel the data applies to.

      Acceptable values are:  
      - "`local`" 
      - "`online`"
  *   `country` (*type:* `String.t`, *default:* `nil`) - The country the data applies to.
  *   `destination` (*type:* `String.t`, *default:* `nil`) - The destination the data applies to.
  *   `itemLevelIssues` (*type:* `list(GoogleApi.Content.V2.Model.AccountStatusItemLevelIssue.t)`, *default:* `nil`) - List of item-level issues.
  *   `statistics` (*type:* `GoogleApi.Content.V2.Model.AccountStatusStatistics.t`, *default:* `nil`) - Aggregated product statistics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channel => String.t(),
          :country => String.t(),
          :destination => String.t(),
          :itemLevelIssues => list(GoogleApi.Content.V2.Model.AccountStatusItemLevelIssue.t()),
          :statistics => GoogleApi.Content.V2.Model.AccountStatusStatistics.t()
        }

  field(:channel)
  field(:country)
  field(:destination)
  field(:itemLevelIssues, as: GoogleApi.Content.V2.Model.AccountStatusItemLevelIssue, type: :list)
  field(:statistics, as: GoogleApi.Content.V2.Model.AccountStatusStatistics)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.AccountStatusProducts do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.AccountStatusProducts.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.AccountStatusProducts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
