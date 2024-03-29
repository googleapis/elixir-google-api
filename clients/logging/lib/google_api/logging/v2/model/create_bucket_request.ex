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

defmodule GoogleApi.Logging.V2.Model.CreateBucketRequest do
  @moduledoc """
  The parameters to CreateBucket.

  ## Attributes

  *   `bucket` (*type:* `GoogleApi.Logging.V2.Model.LogBucket.t`, *default:* `nil`) - Required. The new bucket. The region specified in the new bucket must be compliant with any Location Restriction Org Policy. The name field in the bucket is ignored.
  *   `bucketId` (*type:* `String.t`, *default:* `nil`) - Required. A client-assigned identifier such as "my-bucket". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. Bucket identifiers must start with an alphanumeric character.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The resource in which to create the log bucket: "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/locations/global"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucket => GoogleApi.Logging.V2.Model.LogBucket.t() | nil,
          :bucketId => String.t() | nil,
          :parent => String.t() | nil
        }

  field(:bucket, as: GoogleApi.Logging.V2.Model.LogBucket)
  field(:bucketId)
  field(:parent)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.CreateBucketRequest do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.CreateBucketRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.CreateBucketRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
