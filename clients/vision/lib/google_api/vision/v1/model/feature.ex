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

defmodule GoogleApi.Vision.V1.Model.Feature do
  @moduledoc """
  The type of Google Cloud Vision API detection to perform, and the maximum number of results to return for that type. Multiple `Feature` objects can be specified in the `features` list.

  ## Attributes

  *   `maxResults` (*type:* `integer()`, *default:* `nil`) - Maximum number of results of this type. Does not apply to `TEXT_DETECTION`, `DOCUMENT_TEXT_DETECTION`, or `CROP_HINTS`.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Model to use for the feature. Supported values: "builtin/stable" (the default if unset) and "builtin/latest". `DOCUMENT_TEXT_DETECTION` and `TEXT_DETECTION` also support "builtin/weekly" for the bleeding edge release updated weekly.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The feature type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxResults => integer() | nil,
          :model => String.t() | nil,
          :type => String.t() | nil
        }

  field(:maxResults)
  field(:model)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.Feature do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.Feature.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.Feature do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
