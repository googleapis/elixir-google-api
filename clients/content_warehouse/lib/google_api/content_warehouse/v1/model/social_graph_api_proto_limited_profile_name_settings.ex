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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileNameSettings do
  @moduledoc """


  ## Attributes

  *   `partialNameOptions` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoPartialNameOptions.t`, *default:* `nil`) - Required. Describes which shortening option the user implicitly chose for their limited profile. E.g., if 'John Doe' chose 'John D.', they implicitly chose: partial_name_options { given_name_spec { show_all: true } family_name_spec: { show_initial: true truncation_indicator: PERIOD } } While we'll in all cases serve the actual name chosen by the user for limited profiles (stored below), we'll use this information to recompute the default limited profile to be rendered to users when they change their core name.
  *   `verbatimFullName` (*type:* `String.t`, *default:* `nil`) - The actual textual name that was chosen by the user in the UI. E.g., if 'John Doe' chose 'John D.', this holds 'John D.'. While `partial_name_options` allows the limited profile name to be computed from the core name, the resulting shortened name might change across different versions of the name shortening logic, and we want to preserve the user's choice verbatim whenever possible. This field will be cleared when the two conditions below are met: (1) A successful core name change is not accompanied by a limited profile settings update and (2) The shortened name computed from `partial_name_options` yields a different result than what is originally stored in `verbatim_full_name`. When this happens, the limited profile is effectively *disabled*. E.g., if 'John Doe' from the example above changes their name to 'Jane Doe' and no LimitedProfileSettings are provided, `Jane D.` is the resulting shortened name. Therefore `verbatim_full_name` will be cleared and the limited profile settings will be disabled. On the other hand, if they change their name to `John Dõe`, the resulting shortened name remains `John D.`, and `verbatim_full_name` is kept as is.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :partialNameOptions =>
            GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoPartialNameOptions.t() | nil,
          :verbatimFullName => String.t() | nil
        }

  field(:partialNameOptions,
    as: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoPartialNameOptions
  )

  field(:verbatimFullName)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileNameSettings do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileNameSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.SocialGraphApiProtoLimitedProfileNameSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end