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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.AdWordsLocationExtensions do
  @moduledoc """
  Additional information that is surfaced in AdWords.

  ## Attributes

  *   `adPhone` (*type:* `String.t`, *default:* `nil`) - Required. An alternate phone number to display on AdWords location extensions instead of the location's primary phone number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adPhone => String.t() | nil
        }

  field(:adPhone)
end

defimpl Poison.Decoder,
  for: GoogleApi.MyBusinessBusinessInformation.V1.Model.AdWordsLocationExtensions do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.AdWordsLocationExtensions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MyBusinessBusinessInformation.V1.Model.AdWordsLocationExtensions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
