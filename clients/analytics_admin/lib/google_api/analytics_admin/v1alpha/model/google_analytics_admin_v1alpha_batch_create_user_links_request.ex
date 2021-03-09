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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest do
  @moduledoc """
  Request message for BatchCreateUserLinks RPC.

  ## Attributes

  *   `notifyNewUsers` (*type:* `boolean()`, *default:* `nil`) - Optional. If set, then email the new users notifying them that they've been granted permissions to the resource. Regardless of whether this is set or not, notify_new_user field inside each individual request is ignored.
  *   `requests` (*type:* `list(GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest.t)`, *default:* `nil`) - Required. The requests specifying the user links to create. A maximum of 1000 user links can be created in a batch.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :notifyNewUsers => boolean() | nil,
          :requests =>
            list(
              GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest.t()
            )
            | nil
        }

  field(:notifyNewUsers)

  field(:requests,
    as: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaCreateUserLinkRequest,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
