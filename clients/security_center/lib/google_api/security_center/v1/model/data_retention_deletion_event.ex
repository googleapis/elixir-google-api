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

defmodule GoogleApi.SecurityCenter.V1.Model.DataRetentionDeletionEvent do
  @moduledoc """
  Details about data retention deletion violations, in which the data is non-compliant based on their retention or deletion time, as defined in the applicable data security policy. The Data Retention Deletion (DRD) control is a control of the DSPM (Data Security Posture Management) suite that enables organizations to manage data retention and deletion policies in compliance with regulations, such as GDPR and CRPA. DRD supports two primary policy types: maximum storage length (max TTL) and minimum storage length (min TTL). Both are aimed at helping organizations meet regulatory and data management commitments.

  ## Attributes

  *   `dataObjectCount` (*type:* `String.t`, *default:* `nil`) - Number of objects that violated the policy for this resource. If the number is less than 1,000, then the value of this field is the exact number. If the number of objects that violated the policy is greater than or equal to 1,000, then the value of this field is 1000.
  *   `eventDetectionTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp indicating when the event was detected.
  *   `eventType` (*type:* `String.t`, *default:* `nil`) - Type of the DRD event.
  *   `maxRetentionAllowed` (*type:* `String.t`, *default:* `nil`) - Maximum duration of retention allowed from the DRD control. This comes from the DRD control where users set a max TTL for their data. For example, suppose that a user sets the max TTL for a Cloud Storage bucket to 90 days. However, an object in that bucket is 100 days old. In this case, a DataRetentionDeletionEvent will be generated for that Cloud Storage bucket, and the max_retention_allowed is 90 days.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataObjectCount => String.t() | nil,
          :eventDetectionTime => DateTime.t() | nil,
          :eventType => String.t() | nil,
          :maxRetentionAllowed => String.t() | nil
        }

  field(:dataObjectCount)
  field(:eventDetectionTime, as: DateTime)
  field(:eventType)
  field(:maxRetentionAllowed)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.DataRetentionDeletionEvent do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.DataRetentionDeletionEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.DataRetentionDeletionEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
