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

defmodule GoogleApi.CloudTasks.V2beta2.Model.OidcToken do
  @moduledoc """
  Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect). This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.

  ## Attributes

  *   `audience` (*type:* `String.t`, *default:* `nil`) - Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OIDC token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audience => String.t() | nil,
          :serviceAccountEmail => String.t() | nil
        }

  field(:audience)
  field(:serviceAccountEmail)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.OidcToken do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.OidcToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.OidcToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
