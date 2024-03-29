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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListAppGroupAppsResponse do
  @moduledoc """
  Response for ListAppGroupApps

  ## Attributes

  *   `appGroupApps` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AppGroupApp.t)`, *default:* `nil`) - List of AppGroup apps and their credentials.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token that can be sent as `next_page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appGroupApps =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AppGroupApp.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:appGroupApps, as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1AppGroupApp, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListAppGroupAppsResponse do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListAppGroupAppsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1ListAppGroupAppsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
