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

defmodule GoogleApi.Compute.V1.Model.AWSV4Signature do
  @moduledoc """
  Contains the configurations necessary to generate a signature for access to private storage buckets that support Signature Version 4 for authentication. The service name for generating the authentication header will always default to 's3'.

  ## Attributes

  *   `accessKey` (*type:* `String.t`, *default:* `nil`) - The access key used for s3 bucket authentication. Required for updating or creating a backend that uses AWS v4 signature authentication, but will not be returned as part of the configuration when queried with a REST API GET request. @InputOnly
  *   `accessKeyId` (*type:* `String.t`, *default:* `nil`) - The identifier of an access key used for s3 bucket authentication.
  *   `accessKeyVersion` (*type:* `String.t`, *default:* `nil`) - The optional version identifier for the access key. You can use this to keep track of different iterations of your access key.
  *   `originRegion` (*type:* `String.t`, *default:* `nil`) - The name of the cloud region of your origin. This is a free-form field with the name of the region your cloud uses to host your origin. For example, "us-east-1" for AWS or "us-ashburn-1" for OCI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessKey => String.t() | nil,
          :accessKeyId => String.t() | nil,
          :accessKeyVersion => String.t() | nil,
          :originRegion => String.t() | nil
        }

  field(:accessKey)
  field(:accessKeyId)
  field(:accessKeyVersion)
  field(:originRegion)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AWSV4Signature do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AWSV4Signature.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AWSV4Signature do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
