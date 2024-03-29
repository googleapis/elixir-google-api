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

defmodule GoogleApi.HealthCare.V1.Model.ConsentStore do
  @moduledoc """
  Represents a consent store.

  ## Attributes

  *   `defaultConsentTtl` (*type:* `String.t`, *default:* `nil`) - Optional. Default time to live for Consents created in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.
  *   `enableConsentCreateOnUpdate` (*type:* `boolean()`, *default:* `nil`) - Optional. If `true`, UpdateConsent creates the Consent if it does not already exist. If unspecified, defaults to `false`.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User-supplied key-value pairs used to organize consent stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62}. Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}. No more than 64 labels can be associated with a given store. For more information: https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Resource name of the consent store, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`. Cannot be changed after creation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultConsentTtl => String.t() | nil,
          :enableConsentCreateOnUpdate => boolean() | nil,
          :labels => map() | nil,
          :name => String.t() | nil
        }

  field(:defaultConsentTtl)
  field(:enableConsentCreateOnUpdate)
  field(:labels, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.ConsentStore do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.ConsentStore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.ConsentStore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
