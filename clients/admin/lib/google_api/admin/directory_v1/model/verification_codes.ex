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

defmodule GoogleApi.Admin.Directory_v1.Model.VerificationCodes do
  @moduledoc """
  JSON response template for List verification codes operation in Directory API.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `items` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.VerificationCode.t)`, *default:* `nil`) - A list of verification code resources.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#verificationCodesList`) - The type of the resource. This is always `admin#directory#verificationCodesList`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :items => list(GoogleApi.Admin.Directory_v1.Model.VerificationCode.t()),
          :kind => String.t()
        }

  field(:etag)
  field(:items, as: GoogleApi.Admin.Directory_v1.Model.VerificationCode, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.VerificationCodes do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.VerificationCodes.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.VerificationCodes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
