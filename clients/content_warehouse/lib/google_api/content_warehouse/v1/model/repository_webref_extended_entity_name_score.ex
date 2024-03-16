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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefExtendedEntityNameScore do
  @moduledoc """
  Used to store region-specific score ratio per entity. Next available tag: 4.

  ## Attributes

  *   `domain` (*type:* `String.t`, *default:* `nil`) - The domain name of the website, e.g. "play.google.com".
  *   `region` (*type:* `String.t`, *default:* `nil`) - The region in the III standard (http://go/iii). Eg. "US", "GB"
  *   `scoreRatio` (*type:* `number()`, *default:* `nil`) - Score ratio for the entity, same as the EntityNameScore score ratio.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domain => String.t() | nil,
          :region => String.t() | nil,
          :scoreRatio => number() | nil
        }

  field(:domain)
  field(:region)
  field(:scoreRatio)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefExtendedEntityNameScore do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefExtendedEntityNameScore.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefExtendedEntityNameScore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end