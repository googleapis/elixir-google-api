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

defmodule GoogleApi.DFAReporting.V35.Model.ClickTag do
  @moduledoc """
  Creative Click Tag.

  ## Attributes

  *   `clickThroughUrl` (*type:* `GoogleApi.DFAReporting.V35.Model.CreativeClickThroughUrl.t`, *default:* `nil`) - Parameter value for the specified click tag. This field contains a click-through url.
  *   `eventName` (*type:* `String.t`, *default:* `nil`) - Advertiser event name associated with the click tag. This field is used by DISPLAY_IMAGE_GALLERY and HTML5_BANNER creatives. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Parameter name for the specified click tag. For DISPLAY_IMAGE_GALLERY creative assets, this field must match the value of the creative asset's creativeAssetId.name field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clickThroughUrl => GoogleApi.DFAReporting.V35.Model.CreativeClickThroughUrl.t() | nil,
          :eventName => String.t() | nil,
          :name => String.t() | nil
        }

  field(:clickThroughUrl, as: GoogleApi.DFAReporting.V35.Model.CreativeClickThroughUrl)
  field(:eventName)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.ClickTag do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.ClickTag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.ClickTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
