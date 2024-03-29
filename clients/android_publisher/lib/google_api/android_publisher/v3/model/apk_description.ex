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

defmodule GoogleApi.AndroidPublisher.V3.Model.ApkDescription do
  @moduledoc """
  Description of the created apks.

  ## Attributes

  *   `assetSliceMetadata` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata.t`, *default:* `nil`) - Set only for asset slices.
  *   `instantApkMetadata` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata.t`, *default:* `nil`) - Set only for Instant split APKs.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Path of the Apk, will be in the following format: .apk where DownloadId is the ID used to download the apk using GeneratedApks.Download API.
  *   `splitApkMetadata` (*type:* `GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata.t`, *default:* `nil`) - Set only for Split APKs.
  *   `standaloneApkMetadata` (*type:* `GoogleApi.AndroidPublisher.V3.Model.StandaloneApkMetadata.t`, *default:* `nil`) - Set only for standalone APKs.
  *   `targeting` (*type:* `GoogleApi.AndroidPublisher.V3.Model.ApkTargeting.t`, *default:* `nil`) - Apk-level targeting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetSliceMetadata => GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata.t() | nil,
          :instantApkMetadata => GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata.t() | nil,
          :path => String.t() | nil,
          :splitApkMetadata => GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata.t() | nil,
          :standaloneApkMetadata =>
            GoogleApi.AndroidPublisher.V3.Model.StandaloneApkMetadata.t() | nil,
          :targeting => GoogleApi.AndroidPublisher.V3.Model.ApkTargeting.t() | nil
        }

  field(:assetSliceMetadata, as: GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata)
  field(:instantApkMetadata, as: GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata)
  field(:path)
  field(:splitApkMetadata, as: GoogleApi.AndroidPublisher.V3.Model.SplitApkMetadata)
  field(:standaloneApkMetadata, as: GoogleApi.AndroidPublisher.V3.Model.StandaloneApkMetadata)
  field(:targeting, as: GoogleApi.AndroidPublisher.V3.Model.ApkTargeting)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.ApkDescription do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.ApkDescription.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.ApkDescription do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
