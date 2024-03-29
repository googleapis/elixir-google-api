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

defmodule GoogleApi.ContentWarehouse.V1.Model.CompositeDocLocalizedVariations do
  @moduledoc """


  ## Attributes

  *   `dupsComputedAlternateNames` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingDupsComputedLocalizedAlternateNamesLocaleEntry.t)`, *default:* `nil`) - A subset of computed variations, only the members which are dups to the main url. Used during serving for swapping in the URL based on regional and language preferences of the user.
  *   `webmasterAlternateNames` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingConverterLocalizedAlternateName.t)`, *default:* `nil`) - All localized alternate names provided by the webmaster (canonical and dups, indexed and not-indexed). Used on the ranking side for swapping out results based on the webmaster preference.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dupsComputedAlternateNames =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.IndexingDupsComputedLocalizedAlternateNamesLocaleEntry.t()
            )
            | nil,
          :webmasterAlternateNames =>
            list(GoogleApi.ContentWarehouse.V1.Model.IndexingConverterLocalizedAlternateName.t())
            | nil
        }

  field(:dupsComputedAlternateNames,
    as:
      GoogleApi.ContentWarehouse.V1.Model.IndexingDupsComputedLocalizedAlternateNamesLocaleEntry,
    type: :list
  )

  field(:webmasterAlternateNames,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingConverterLocalizedAlternateName,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.CompositeDocLocalizedVariations do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CompositeDocLocalizedVariations.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.CompositeDocLocalizedVariations do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
