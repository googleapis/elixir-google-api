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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationDescription do
  @moduledoc """
  A flattened description of a `PrimitiveTransformation` or `RecordSuppression`.

  ## Attributes

  *   `condition` (*type:* `String.t`, *default:* `nil`) - A human-readable string representation of the `RecordCondition` corresponding to this transformation. Set if a `RecordCondition` was used to determine whether or not to apply this transformation. Examples: * (age_field > 85) * (age_field <= 18) * (zip_field exists) * (zip_field == 01234) && (city_field != "Springville") * (zip_field == 01234) && (age_field <= 18) && (city_field exists)
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of the transformation. This is empty for a RECORD_SUPPRESSION, or is the output of calling toString() on the `PrimitiveTransformation` protocol buffer message for any other type of transformation.
  *   `infoType` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t`, *default:* `nil`) - Set if the transformation was limited to a specific `InfoType`.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The transformation type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => String.t() | nil,
          :description => String.t() | nil,
          :infoType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t() | nil,
          :type => String.t() | nil
        }

  field(:condition)
  field(:description)
  field(:infoType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationDescription do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationDescription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
