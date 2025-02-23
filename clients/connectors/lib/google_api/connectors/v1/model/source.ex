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

defmodule GoogleApi.Connectors.V1.Model.Source do
  @moduledoc """
  Source to extract the backend from.

  ## Attributes

  *   `fieldId` (*type:* `String.t`, *default:* `nil`) - Field identifier. For example config variable name.
  *   `sourceType` (*type:* `String.t`, *default:* `nil`) - Type of the source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fieldId => String.t() | nil,
          :sourceType => String.t() | nil
        }

  field(:fieldId)
  field(:sourceType)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.Source do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.Source.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.Source do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
