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

defmodule GoogleApi.Admin.Directory_v1.Model.Schemas do
  @moduledoc """
  JSON response template for List Schema operation in Directory API.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#schemas`) - Kind of resource this is.
  *   `schemas` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.Schema.t)`, *default:* `nil`) - A list of UserSchema objects.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :kind => String.t() | nil,
          :schemas => list(GoogleApi.Admin.Directory_v1.Model.Schema.t()) | nil
        }

  field(:etag)
  field(:kind)
  field(:schemas, as: GoogleApi.Admin.Directory_v1.Model.Schema, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.Schemas do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.Schemas.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.Schemas do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
