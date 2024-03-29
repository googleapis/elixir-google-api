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

defmodule GoogleApi.Speech.V1.Model.PhraseSet do
  @moduledoc """
  Provides "hints" to the speech recognizer to favor specific words and phrases in the results.

  ## Attributes

  *   `annotations` (*type:* `map()`, *default:* `nil`) - Output only. Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  *   `boost` (*type:* `number()`, *default:* `nil`) - Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 (exclusive) and 20. We recommend using a binary search approach to finding the optimal value for your use case as well as adding phrases both with and without boost to your requests.
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this resource was requested for deletion. This field is not used.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. User-settable, human-readable name for the PhraseSet. Must be 63 characters or less. This field is not used.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time at which this resource will be purged. This field is not used.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Output only. The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the PhraseSet is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  *   `kmsKeyVersionName` (*type:* `String.t`, *default:* `nil`) - Output only. The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the PhraseSet is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the phrase set.
  *   `phrases` (*type:* `list(GoogleApi.Speech.V1.Model.Phrase.t)`, *default:* `nil`) - A list of word and phrases.
  *   `reconciling` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether or not this PhraseSet is in the process of being updated. This field is not used.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The CustomClass lifecycle state. This field is not used.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System-assigned unique identifier for the PhraseSet. This field is not used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotations => map() | nil,
          :boost => number() | nil,
          :deleteTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :kmsKeyName => String.t() | nil,
          :kmsKeyVersionName => String.t() | nil,
          :name => String.t() | nil,
          :phrases => list(GoogleApi.Speech.V1.Model.Phrase.t()) | nil,
          :reconciling => boolean() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil
        }

  field(:annotations, type: :map)
  field(:boost)
  field(:deleteTime, as: DateTime)
  field(:displayName)
  field(:etag)
  field(:expireTime, as: DateTime)
  field(:kmsKeyName)
  field(:kmsKeyVersionName)
  field(:name)
  field(:phrases, as: GoogleApi.Speech.V1.Model.Phrase, type: :list)
  field(:reconciling)
  field(:state)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.Speech.V1.Model.PhraseSet do
  def decode(value, options) do
    GoogleApi.Speech.V1.Model.PhraseSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Speech.V1.Model.PhraseSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
