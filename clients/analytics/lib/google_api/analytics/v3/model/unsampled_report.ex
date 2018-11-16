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

defmodule GoogleApi.Analytics.V3.Model.UnsampledReport do
  @moduledoc """
  JSON template for Analytics unsampled report resource.

  ## Attributes

  - accountId (String.t): Account ID to which this unsampled report belongs. Defaults to: `null`.
  - cloudStorageDownloadDetails (UnsampledReportCloudStorageDownloadDetails):  Defaults to: `null`.
  - created (DateTime.t): Time this unsampled report was created. Defaults to: `null`.
  - dimensions (String.t): The dimensions for the unsampled report. Defaults to: `null`.
  - downloadType (String.t): The type of download you need to use for the report data file. Possible values include &#x60;GOOGLE_DRIVE&#x60; and &#x60;GOOGLE_CLOUD_STORAGE&#x60;. If the value is &#x60;GOOGLE_DRIVE&#x60;, see the &#x60;driveDownloadDetails&#x60; field. If the value is &#x60;GOOGLE_CLOUD_STORAGE&#x60;, see the &#x60;cloudStorageDownloadDetails&#x60; field. Defaults to: `null`.
  - driveDownloadDetails (UnsampledReportDriveDownloadDetails):  Defaults to: `null`.
  - end-date (String.t): The end date for the unsampled report. Defaults to: `null`.
  - filters (String.t): The filters for the unsampled report. Defaults to: `null`.
  - id (String.t): Unsampled report ID. Defaults to: `null`.
  - kind (String.t): Resource type for an Analytics unsampled report. Defaults to: `null`.
  - metrics (String.t): The metrics for the unsampled report. Defaults to: `null`.
  - profileId (String.t): View (Profile) ID to which this unsampled report belongs. Defaults to: `null`.
  - segment (String.t): The segment for the unsampled report. Defaults to: `null`.
  - selfLink (String.t): Link for this unsampled report. Defaults to: `null`.
  - start-date (String.t): The start date for the unsampled report. Defaults to: `null`.
  - status (String.t): Status of this unsampled report. Possible values are PENDING, COMPLETED, or FAILED. Defaults to: `null`.
  - title (String.t): Title of the unsampled report. Defaults to: `null`.
  - updated (DateTime.t): Time this unsampled report was last modified. Defaults to: `null`.
  - webPropertyId (String.t): Web property ID to which this unsampled report belongs. The web property ID is of the form UA-XXXXX-YY. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :cloudStorageDownloadDetails =>
            GoogleApi.Analytics.V3.Model.UnsampledReportCloudStorageDownloadDetails.t(),
          :created => DateTime.t(),
          :dimensions => any(),
          :downloadType => any(),
          :driveDownloadDetails =>
            GoogleApi.Analytics.V3.Model.UnsampledReportDriveDownloadDetails.t(),
          :"end-date" => any(),
          :filters => any(),
          :id => any(),
          :kind => any(),
          :metrics => any(),
          :profileId => any(),
          :segment => any(),
          :selfLink => any(),
          :"start-date" => any(),
          :status => any(),
          :title => any(),
          :updated => DateTime.t(),
          :webPropertyId => any()
        }

  field(:accountId)

  field(:cloudStorageDownloadDetails,
    as: GoogleApi.Analytics.V3.Model.UnsampledReportCloudStorageDownloadDetails
  )

  field(:created, as: DateTime)
  field(:dimensions)
  field(:downloadType)

  field(:driveDownloadDetails,
    as: GoogleApi.Analytics.V3.Model.UnsampledReportDriveDownloadDetails
  )

  field(:"end-date")
  field(:filters)
  field(:id)
  field(:kind)
  field(:metrics)
  field(:profileId)
  field(:segment)
  field(:selfLink)
  field(:"start-date")
  field(:status)
  field(:title)
  field(:updated, as: DateTime)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.UnsampledReport do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.UnsampledReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.UnsampledReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
