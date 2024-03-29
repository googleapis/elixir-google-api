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

defmodule GoogleApi.BigtableAdmin.V2.Model.CreateAuthorizedViewRequest do
  @moduledoc """
  The request for CreateAuthorizedView

  ## Attributes

  *   `authorizedView` (*type:* `GoogleApi.BigtableAdmin.V2.Model.AuthorizedView.t`, *default:* `nil`) - Required. The AuthorizedView to create.
  *   `authorizedViewId` (*type:* `String.t`, *default:* `nil`) - Required. The id of the AuthorizedView to create. This AuthorizedView must not already exist. The `authorized_view_id` appended to `parent` forms the full AuthorizedView name of the form `projects/{project}/instances/{instance}/tables/{table}/authorizedView/{authorized_view}`.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. This is the name of the table the AuthorizedView belongs to. Values are of the form `projects/{project}/instances/{instance}/tables/{table}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizedView => GoogleApi.BigtableAdmin.V2.Model.AuthorizedView.t() | nil,
          :authorizedViewId => String.t() | nil,
          :parent => String.t() | nil
        }

  field(:authorizedView, as: GoogleApi.BigtableAdmin.V2.Model.AuthorizedView)
  field(:authorizedViewId)
  field(:parent)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.CreateAuthorizedViewRequest do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.CreateAuthorizedViewRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.CreateAuthorizedViewRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
