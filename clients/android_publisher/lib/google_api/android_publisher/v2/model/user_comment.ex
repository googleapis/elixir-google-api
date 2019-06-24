# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AndroidPublisher.V2.Model.UserComment do
  @moduledoc """


  ## Attributes

  *   `androidOsVersion` (*type:* `integer()`, *default:* `nil`) - Integer Android SDK version of the user's device at the time the review was written, e.g. 23 is Marshmallow. May be absent.
  *   `appVersionCode` (*type:* `integer()`, *default:* `nil`) - Integer version code of the app as installed at the time the review was written. May be absent.
  *   `appVersionName` (*type:* `String.t`, *default:* `nil`) - String version name of the app as installed at the time the review was written. May be absent.
  *   `device` (*type:* `String.t`, *default:* `nil`) - Codename for the reviewer's device, e.g. klte, flounder. May be absent.
  *   `deviceMetadata` (*type:* `GoogleApi.AndroidPublisher.V2.Model.DeviceMetadata.t`, *default:* `nil`) - Some information about the characteristics of the user's device
  *   `lastModified` (*type:* `GoogleApi.AndroidPublisher.V2.Model.Timestamp.t`, *default:* `nil`) - The last time at which this comment was updated.
  *   `originalText` (*type:* `String.t`, *default:* `nil`) - Untranslated text of the review, in the case where the review has been translated. If the review has not been translated this is left blank.
  *   `reviewerLanguage` (*type:* `String.t`, *default:* `nil`) - Language code for the reviewer. This is taken from the device settings so is not guaranteed to match the language the review is written in. May be absent.
  *   `starRating` (*type:* `integer()`, *default:* `nil`) - The star rating associated with the review, from 1 to 5.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The content of the comment, i.e. review body. In some cases users have been able to write a review with separate title and body; in those cases the title and body are concatenated and separated by a tab character.
  *   `thumbsDownCount` (*type:* `integer()`, *default:* `nil`) - Number of users who have given this review a thumbs down
  *   `thumbsUpCount` (*type:* `integer()`, *default:* `nil`) - Number of users who have given this review a thumbs up
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidOsVersion => integer(),
          :appVersionCode => integer(),
          :appVersionName => String.t(),
          :device => String.t(),
          :deviceMetadata => GoogleApi.AndroidPublisher.V2.Model.DeviceMetadata.t(),
          :lastModified => GoogleApi.AndroidPublisher.V2.Model.Timestamp.t(),
          :originalText => String.t(),
          :reviewerLanguage => String.t(),
          :starRating => integer(),
          :text => String.t(),
          :thumbsDownCount => integer(),
          :thumbsUpCount => integer()
        }

  field(:androidOsVersion)
  field(:appVersionCode)
  field(:appVersionName)
  field(:device)
  field(:deviceMetadata, as: GoogleApi.AndroidPublisher.V2.Model.DeviceMetadata)
  field(:lastModified, as: GoogleApi.AndroidPublisher.V2.Model.Timestamp)
  field(:originalText)
  field(:reviewerLanguage)
  field(:starRating)
  field(:text)
  field(:thumbsDownCount)
  field(:thumbsUpCount)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.UserComment do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.UserComment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.UserComment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
