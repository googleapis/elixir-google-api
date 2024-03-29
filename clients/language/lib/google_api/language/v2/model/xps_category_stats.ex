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

defmodule GoogleApi.Language.V2.Model.XPSCategoryStats do
  @moduledoc """
  The data statistics of a series of CATEGORY values.

  ## Attributes

  *   `commonStats` (*type:* `GoogleApi.Language.V2.Model.XPSCommonStats.t`, *default:* `nil`) - 
  *   `topCategoryStats` (*type:* `list(GoogleApi.Language.V2.Model.XPSCategoryStatsSingleCategoryStats.t)`, *default:* `nil`) - The statistics of the top 20 CATEGORY values, ordered by CategoryStats.SingleCategoryStats.count.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commonStats => GoogleApi.Language.V2.Model.XPSCommonStats.t() | nil,
          :topCategoryStats =>
            list(GoogleApi.Language.V2.Model.XPSCategoryStatsSingleCategoryStats.t()) | nil
        }

  field(:commonStats, as: GoogleApi.Language.V2.Model.XPSCommonStats)

  field(:topCategoryStats,
    as: GoogleApi.Language.V2.Model.XPSCategoryStatsSingleCategoryStats,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.XPSCategoryStats do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.XPSCategoryStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.XPSCategoryStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
