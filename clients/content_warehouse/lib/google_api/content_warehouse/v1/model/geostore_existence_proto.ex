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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreExistenceProto do
  @moduledoc """


  ## Attributes

  *   `closeReason` (*type:* `String.t`, *default:* `nil`) - Structured reason for the permanent closure (if any).
  *   `closed` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the place is closed (permanently or temporarily), i.e., not operational in the present, but was in the past. WARNING: New code should prefer go/geo-schema-reference:operational-status.
  *   `endAsOfDate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto.t`, *default:* `nil`) - The earliest known date of this feature's "end" (e.g. an establishment's permanent closure), if the actual date is unknown; i.e. the best known upper bound of the day end_date would represent. end_as_of_date must be in local (civil) time and of PRECISION_DAY. WARNING: Not necessarily consistent yet with `closed` or the ClosureAttachmentProto. If you believe you need to use this field directly, please go/contact-geo-schema. 
  *   `endDate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto.t`, *default:* `nil`) - 
  *   `featureBirthTimestampSeconds` (*type:* `String.t`, *default:* `nil`) - ** DEPRECATED ** This field is now deprecated (see b/22878252). Please use the Geo Schema GetFeatureBirthTimestamp() API to extract the birth timestamp of a feature. The timestamp in seconds since the UNIX epoch (January 1, 1970) when this feature becomes live in the Geo repository. This was the birth date of the place's representation in Google whereas start_date is the birth date of the place's operations in the physical world.
  *   `removed` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the feature is marked as removed in the Geo repository. Removed features are still present in the Geo repository but are considered to be in an inactive state (not valid for lint purposes, not retrievable except explicitly by feature ID, etc.). NOTE: If you have access to a complete FeatureProto, do NOT read this bit directly to find out whether a feature is removed. Instead, rely on the IsFeatureRemoved() API, available in C++ (geostore/base/public/feature.h) and Java (geostore/base/Feature.java).
  *   `removedReason` (*type:* `String.t`, *default:* `nil`) - Structured reason why the feature is marked as removed. Relevant only when removed == true.
  *   `startDate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto.t`, *default:* `nil`) - (Initial) start and (permanent) end dates of operations, such that start_date is the first day operational and end_date is the first day when operations have permanently ended. The only allowed precisions are PRECISION_DAY, PRECISION_MONTH, PRECISION_YEAR. DateTimeProto.seconds should have the lowest legal value for the desired date/time and precision. E.g. for PRECISION_MONTH, 2019-02-15 21:10:30 is not valid, it should be 2019-02-01 00:00:00 instead. NOTE: The start_date and end_date are stored in UTC but should be interpreted as being in the local timezone. So clients should convert the DateTimeProto to local (civil) time using UTC+0, and then treat the result as local to the feature.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :closeReason => String.t() | nil,
          :closed => boolean() | nil,
          :endAsOfDate => GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto.t() | nil,
          :endDate => GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto.t() | nil,
          :featureBirthTimestampSeconds => String.t() | nil,
          :removed => boolean() | nil,
          :removedReason => String.t() | nil,
          :startDate => GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto.t() | nil
        }

  field(:closeReason)
  field(:closed)
  field(:endAsOfDate, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto)
  field(:endDate, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto)
  field(:featureBirthTimestampSeconds)
  field(:removed)
  field(:removedReason)
  field(:startDate, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreDateTimeProto)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreExistenceProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreExistenceProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreExistenceProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
