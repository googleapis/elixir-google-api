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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_Label do
  @moduledoc """
  A label.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the label. Read only.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the label. This field is required and should not be empty when creating a new label. The length of this string should be between 1 and 80, inclusive.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the resource. Label resource names have the form: `customers/{customer_id}/labels/{label_id}`
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. Status of the label. Read only.
  *   `textLabel` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TextLabel.t`, *default:* `nil`) - A type of label displaying text on a colored background.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :name => String.t() | nil,
          :resourceName => String.t() | nil,
          :status => String.t() | nil,
          :textLabel =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TextLabel.t() | nil
        }

  field(:id)
  field(:name)
  field(:resourceName)
  field(:status)
  field(:textLabel, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TextLabel)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_Label do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_Label.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_Label do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
