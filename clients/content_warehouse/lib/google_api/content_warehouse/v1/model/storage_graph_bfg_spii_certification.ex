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

defmodule GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgSpiiCertification do
  @moduledoc """
  A fact about potentially sensitive personal info (http://what/SPII) can be "certified" iff it meets specific requirements. See go/kg-spii-certification for details.

  ## Attributes

  *   `authorityFeedback` (*type:* `GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgAuthorityFeedbackMetadata.t`, *default:* `nil`) - This fact was provided via KGO / Entity Authority.
  *   `legalRequest` (*type:* `GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgLegalRequestMetadata.t`, *default:* `nil`) - This fact was provided via a legal request.
  *   `publicInformation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgPublicInformationMetadata.t`, *default:* `nil`) - This fact is public information. (See go/kg-spii-certification for a description of what qualifies as public information -- simply finding a fact online is not sufficient to certify a fact as public.)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorityFeedback =>
            GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgAuthorityFeedbackMetadata.t() | nil,
          :legalRequest =>
            GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgLegalRequestMetadata.t() | nil,
          :publicInformation =>
            GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgPublicInformationMetadata.t() | nil
        }

  field(:authorityFeedback,
    as: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgAuthorityFeedbackMetadata
  )

  field(:legalRequest, as: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgLegalRequestMetadata)

  field(:publicInformation,
    as: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgPublicInformationMetadata
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgSpiiCertification do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgSpiiCertification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.StorageGraphBfgSpiiCertification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
