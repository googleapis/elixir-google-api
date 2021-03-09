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

defmodule GoogleApi.Admin.Directory_v1.Model.ChromeOsDevices do
  @moduledoc """


  ## Attributes

  *   `chromeosdevices` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.ChromeOsDevice.t)`, *default:* `nil`) - List of Chrome OS Device objects.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#chromeosdevices`) - Kind of resource this is.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token used to access the next page of this result. To access the next page, use this token's value in the `pageToken` query string of this request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chromeosdevices => list(GoogleApi.Admin.Directory_v1.Model.ChromeOsDevice.t()) | nil,
          :etag => String.t() | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil
        }

  field(:chromeosdevices, as: GoogleApi.Admin.Directory_v1.Model.ChromeOsDevice, type: :list)
  field(:etag)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.ChromeOsDevices do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.ChromeOsDevices.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.ChromeOsDevices do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
