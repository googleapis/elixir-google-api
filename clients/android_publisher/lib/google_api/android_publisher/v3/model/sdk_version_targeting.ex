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

defmodule GoogleApi.AndroidPublisher.V3.Model.SdkVersionTargeting do
  @moduledoc """
  Targeting based on sdk version.

  ## Attributes

  *   `alternatives` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.SdkVersion.t)`, *default:* `nil`) - Targeting of other sibling directories that were in the Bundle. For main splits this is targeting of other main splits.
  *   `value` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.SdkVersion.t)`, *default:* `nil`) - Value of an sdk version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternatives => list(GoogleApi.AndroidPublisher.V3.Model.SdkVersion.t()) | nil,
          :value => list(GoogleApi.AndroidPublisher.V3.Model.SdkVersion.t()) | nil
        }

  field(:alternatives, as: GoogleApi.AndroidPublisher.V3.Model.SdkVersion, type: :list)
  field(:value, as: GoogleApi.AndroidPublisher.V3.Model.SdkVersion, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.SdkVersionTargeting do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.SdkVersionTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.SdkVersionTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
