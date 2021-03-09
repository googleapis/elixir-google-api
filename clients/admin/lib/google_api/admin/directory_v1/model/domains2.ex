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

defmodule GoogleApi.Admin.Directory_v1.Model.Domains2 do
  @moduledoc """


  ## Attributes

  *   `domains` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.Domains.t)`, *default:* `nil`) - List of domain objects.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#domains`) - Kind of resource this is.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domains => list(GoogleApi.Admin.Directory_v1.Model.Domains.t()) | nil,
          :etag => String.t() | nil,
          :kind => String.t() | nil
        }

  field(:domains, as: GoogleApi.Admin.Directory_v1.Model.Domains, type: :list)
  field(:etag)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.Domains2 do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.Domains2.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.Domains2 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
