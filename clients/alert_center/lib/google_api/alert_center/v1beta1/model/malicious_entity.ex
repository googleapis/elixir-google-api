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

defmodule GoogleApi.AlertCenter.V1beta1.Model.MaliciousEntity do
  @moduledoc """
  Entity whose actions triggered a Gmail phishing alert.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The header from display name.
  *   `entity` (*type:* `GoogleApi.AlertCenter.V1beta1.Model.User.t`, *default:* `nil`) - The actor who triggered a gmail phishing alert.
  *   `fromHeader` (*type:* `String.t`, *default:* `nil`) - The sender email address.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :entity => GoogleApi.AlertCenter.V1beta1.Model.User.t() | nil,
          :fromHeader => String.t() | nil
        }

  field(:displayName)
  field(:entity, as: GoogleApi.AlertCenter.V1beta1.Model.User)
  field(:fromHeader)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.MaliciousEntity do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.MaliciousEntity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.MaliciousEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
