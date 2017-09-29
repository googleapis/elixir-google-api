# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.StorageTransfer.V1.Model.GcsData do
  @moduledoc """
  In a GcsData, an object&#39;s name is the Google Cloud Storage object&#39;s name and its &#x60;lastModificationTime&#x60; refers to the object&#39;s updated time, which changes when the content or the metadata of the object is updated.

  ## Attributes

  - bucketName (String): Google Cloud Storage bucket name (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Required. Defaults to: `null`.
  """

  defstruct [
    :"bucketName"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.StorageTransfer.V1.Model.GcsData do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.StorageTransfer.V1.Model.GcsData do
  def encode(value, options) do
    GoogleApi.StorageTransfer.V1.Deserializer.serialize_non_nil(value, options)
  end
end

