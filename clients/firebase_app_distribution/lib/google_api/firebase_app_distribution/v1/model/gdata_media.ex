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

defmodule GoogleApi.FirebaseAppDistribution.V1.Model.GdataMedia do
  @moduledoc """
  A reference to data stored on the filesystem, on GFS or in blobstore.

  ## Attributes

  *   `algorithm` (*type:* `String.t`, *default:* `nil`) - Deprecated, use one of explicit hash type fields instead. Algorithm used for calculating the hash. As of 2011/01/21, "MD5" is the only possible value for this field. New values may be added at any time.
  *   `bigstoreObjectRef` (*type:* `String.t`, *default:* `nil`) - Use object_id instead.
  *   `blobRef` (*type:* `String.t`, *default:* `nil`) - Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should be the byte representation of a blobstore.BlobRef. Since Blobstore is deprecating v1, use blobstore2_info instead. For now, any v2 blob will also be represented in this field as v1 BlobRef.
  *   `blobstore2Info` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataBlobstore2Info.t`, *default:* `nil`) - Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to a v2 blob.
  *   `compositeMedia` (*type:* `list(GoogleApi.FirebaseAppDistribution.V1.Model.GdataCompositeMedia.t)`, *default:* `nil`) - A composite media composed of one or more media objects, set if reference_type is COMPOSITE_MEDIA. The media length field must be set to the sum of the lengths of all composite media objects. Note: All composite media must have length specified.
  *   `contentType` (*type:* `String.t`, *default:* `nil`) - MIME type of the data
  *   `contentTypeInfo` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataContentTypeInfo.t`, *default:* `nil`) - Extended content type information provided for Scotty uploads.
  *   `cosmoBinaryReference` (*type:* `String.t`, *default:* `nil`) - A binary data reference for a media download. Serves as a technology-agnostic binary reference in some Google infrastructure. This value is a serialized storage_cosmo.BinaryReference proto. Storing it as bytes is a hack to get around the fact that the cosmo proto (as well as others it includes) doesn't support JavaScript. This prevents us from including the actual type of this field.
  *   `crc32cHash` (*type:* `integer()`, *default:* `nil`) - For Scotty Uploads: Scotty-provided hashes for uploads For Scotty Downloads: (WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.) A Hash provided by the agent to be used to verify the data being downloaded. Currently only supported for inline payloads. Further, only crc32c_hash is currently supported.
  *   `diffChecksumsResponse` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffChecksumsResponse.t`, *default:* `nil`) - Set if reference_type is DIFF_CHECKSUMS_RESPONSE.
  *   `diffDownloadResponse` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffDownloadResponse.t`, *default:* `nil`) - Set if reference_type is DIFF_DOWNLOAD_RESPONSE.
  *   `diffUploadRequest` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffUploadRequest.t`, *default:* `nil`) - Set if reference_type is DIFF_UPLOAD_REQUEST.
  *   `diffUploadResponse` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffUploadResponse.t`, *default:* `nil`) - Set if reference_type is DIFF_UPLOAD_RESPONSE.
  *   `diffVersionResponse` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffVersionResponse.t`, *default:* `nil`) - Set if reference_type is DIFF_VERSION_RESPONSE.
  *   `downloadParameters` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataDownloadParameters.t`, *default:* `nil`) - Parameters for a media download.
  *   `filename` (*type:* `String.t`, *default:* `nil`) - Original file name
  *   `hash` (*type:* `String.t`, *default:* `nil`) - Deprecated, use one of explicit hash type fields instead. These two hash related fields will only be populated on Scotty based media uploads and will contain the content of the hash group in the NotificationRequest: http://cs/#google3/blobstore2/api/scotty/service/proto/upload_listener.proto&q=class:Hash Hex encoded hash value of the uploaded media.
  *   `hashVerified` (*type:* `boolean()`, *default:* `nil`) - For Scotty uploads only. If a user sends a hash code and the backend has requested that Scotty verify the upload against the client hash, Scotty will perform the check on behalf of the backend and will reject it if the hashes don't match. This is set to true if Scotty performed this verification.
  *   `inline` (*type:* `String.t`, *default:* `nil`) - Media data, set if reference_type is INLINE
  *   `isPotentialRetry` (*type:* `boolean()`, *default:* `nil`) - |is_potential_retry| is set false only when Scotty is certain that it has not sent the request before. When a client resumes an upload, this field must be set true in agent calls, because Scotty cannot be certain that it has never sent the request before due to potential failure in the session state persistence.
  *   `length` (*type:* `String.t`, *default:* `nil`) - Size of the data, in bytes
  *   `md5Hash` (*type:* `String.t`, *default:* `nil`) - Scotty-provided MD5 hash for an upload.
  *   `mediaId` (*type:* `String.t`, *default:* `nil`) - Media id to forward to the operation GetMedia. Can be set if reference_type is GET_MEDIA.
  *   `objectId` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GdataObjectId.t`, *default:* `nil`) - Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Path to the data, set if reference_type is PATH
  *   `referenceType` (*type:* `String.t`, *default:* `nil`) - Describes what the field reference contains.
  *   `sha1Hash` (*type:* `String.t`, *default:* `nil`) - Scotty-provided SHA1 hash for an upload.
  *   `sha256Hash` (*type:* `String.t`, *default:* `nil`) - Scotty-provided SHA256 hash for an upload.
  *   `timestamp` (*type:* `String.t`, *default:* `nil`) - Time at which the media data was last updated, in milliseconds since UNIX epoch
  *   `token` (*type:* `String.t`, *default:* `nil`) - A unique fingerprint/version id for the media data
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => String.t() | nil,
          :bigstoreObjectRef => String.t() | nil,
          :blobRef => String.t() | nil,
          :blobstore2Info =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GdataBlobstore2Info.t() | nil,
          :compositeMedia =>
            list(GoogleApi.FirebaseAppDistribution.V1.Model.GdataCompositeMedia.t()) | nil,
          :contentType => String.t() | nil,
          :contentTypeInfo =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GdataContentTypeInfo.t() | nil,
          :cosmoBinaryReference => String.t() | nil,
          :crc32cHash => integer() | nil,
          :diffChecksumsResponse =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffChecksumsResponse.t() | nil,
          :diffDownloadResponse =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffDownloadResponse.t() | nil,
          :diffUploadRequest =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffUploadRequest.t() | nil,
          :diffUploadResponse =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffUploadResponse.t() | nil,
          :diffVersionResponse =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffVersionResponse.t() | nil,
          :downloadParameters =>
            GoogleApi.FirebaseAppDistribution.V1.Model.GdataDownloadParameters.t() | nil,
          :filename => String.t() | nil,
          :hash => String.t() | nil,
          :hashVerified => boolean() | nil,
          :inline => String.t() | nil,
          :isPotentialRetry => boolean() | nil,
          :length => String.t() | nil,
          :md5Hash => String.t() | nil,
          :mediaId => String.t() | nil,
          :objectId => GoogleApi.FirebaseAppDistribution.V1.Model.GdataObjectId.t() | nil,
          :path => String.t() | nil,
          :referenceType => String.t() | nil,
          :sha1Hash => String.t() | nil,
          :sha256Hash => String.t() | nil,
          :timestamp => String.t() | nil,
          :token => String.t() | nil
        }

  field(:algorithm)
  field(:bigstoreObjectRef)
  field(:blobRef)
  field(:blobstore2Info, as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataBlobstore2Info)

  field(:compositeMedia,
    as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataCompositeMedia,
    type: :list
  )

  field(:contentType)
  field(:contentTypeInfo, as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataContentTypeInfo)
  field(:cosmoBinaryReference)
  field(:crc32cHash)

  field(:diffChecksumsResponse,
    as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffChecksumsResponse
  )

  field(:diffDownloadResponse,
    as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffDownloadResponse
  )

  field(:diffUploadRequest, as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffUploadRequest)

  field(:diffUploadResponse,
    as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffUploadResponse
  )

  field(:diffVersionResponse,
    as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataDiffVersionResponse
  )

  field(:downloadParameters,
    as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataDownloadParameters
  )

  field(:filename)
  field(:hash)
  field(:hashVerified)
  field(:inline)
  field(:isPotentialRetry)
  field(:length)
  field(:md5Hash)
  field(:mediaId)
  field(:objectId, as: GoogleApi.FirebaseAppDistribution.V1.Model.GdataObjectId)
  field(:path)
  field(:referenceType)
  field(:sha1Hash)
  field(:sha256Hash)
  field(:timestamp)
  field(:token)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseAppDistribution.V1.Model.GdataMedia do
  def decode(value, options) do
    GoogleApi.FirebaseAppDistribution.V1.Model.GdataMedia.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseAppDistribution.V1.Model.GdataMedia do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
