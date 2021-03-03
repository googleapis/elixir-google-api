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

defmodule GoogleApi.HealthCare.V1.Model.Consent do
  @moduledoc """
  Represents a user's consent.

  ## Attributes

  *   `consentArtifact` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp in UTC of when this Consent is considered expired.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  *   `policies` (*type:* `list(GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1ConsentPolicy.t)`, *default:* `nil`) - Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  *   `revisionCreateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp that the revision was created.
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - Output only. The revision ID of the Consent. The format is an 8-character hexadecimal string. Refer to a specific revision of a Consent by appending `@{revision_id}` to the Consent's resource name.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. Indicates the current state of this Consent.
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Input only. The time to live for this Consent from when it is created.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Required. User's UUID provided by the client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consentArtifact => String.t(),
          :expireTime => DateTime.t(),
          :metadata => map(),
          :name => String.t(),
          :policies =>
            list(GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1ConsentPolicy.t()),
          :revisionCreateTime => DateTime.t(),
          :revisionId => String.t(),
          :state => String.t(),
          :ttl => String.t(),
          :userId => String.t()
        }

  field(:consentArtifact)
  field(:expireTime, as: DateTime)
  field(:metadata, type: :map)
  field(:name)

  field(:policies,
    as: GoogleApi.HealthCare.V1.Model.GoogleCloudHealthcareV1ConsentPolicy,
    type: :list
  )

  field(:revisionCreateTime, as: DateTime)
  field(:revisionId)
  field(:state)
  field(:ttl)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.Consent do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.Consent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.Consent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
