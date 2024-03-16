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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiGender do
  @moduledoc """
  Gender in PeopleApi has some odd semantics about writing and reading that are not obvious from the proto definition. First, the `type` string, when read, always maps to the constrained domain of "male", "female", and "other", aside from a pathological case that PeopleApi would like to fix. There are two typical patterns: 1. `type` is either "male" or "female" and `custom_type` and `address_me_as` are exactly as specified by an update to PeopleApi, although they are most often absent for "male" and "female" writes. 2. `type` is "other" and `custom_type` is set to a freeform string from the request. `address_me_as` is equal to whatever was provided at write time. When writing, the free-form string for `custom_type` can come from either `custom_type` if the field is present on the request, or if `custom_type` is absent, the string value of `type` will be copied into it. Any value in `type` will be coerced to "other" and the free-form value will be copied into `custom_type`, even if `type` is exactly "other". Prefer to explicitly set `custom_type` and set type to "other" instead of setting type to a free-form value. There are weird edge cases when the value is "unknown". Consider the behavior for `type` == "unknown" unspecified. Clients reading the gender should use the value from `formatted_type` if `type` is "male" or "female". If `type` is "other", `formatted_type` will be "Other" (or some translation) and clients should read `custom_type` for more specificity. 

  ## Attributes

  *   `addressMeAs` (*type:* `String.t`, *default:* `nil`) - Preferred pronoun choice. It's unclear whether this value is constrained to a finite domain by UIs. `address_me_as` may be populated regardless of whether `type` is "male", "female", or "other", although most writers only set it if `type` is "other".
  *   `customType` (*type:* `String.t`, *default:* `nil`) - A free-form string indicating what the user entered as their gender. `custom_type` may exist even if the type is "male" or "female", although most writers do not set it unless `type` is "other".
  *   `formattedType` (*type:* `String.t`, *default:* `nil`) - The `type` translated and formatted in the request locale. See go/people-api-howto/localization for details on how to usage.
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t`, *default:* `nil`) - 
  *   `type` (*type:* `String.t`, *default:* `nil`) - The gender. "male", "female", or "other". If "other", typically, additional fields will have additional information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addressMeAs => String.t() | nil,
          :customType => String.t() | nil,
          :formattedType => String.t() | nil,
          :metadata =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t()
            | nil,
          :type => String.t() | nil
        }

  field(:addressMeAs)
  field(:customType)
  field(:formattedType)

  field(:metadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata
  )

  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiGender do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiGender.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiGender do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end