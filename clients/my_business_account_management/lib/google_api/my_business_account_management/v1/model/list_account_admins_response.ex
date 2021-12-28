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

defmodule GoogleApi.MyBusinessAccountManagement.V1.Model.ListAccountAdminsResponse do
  @moduledoc """
  Response message for AccessControl.ListAccountAdmins.

  ## Attributes

  *   `accountAdmins` (*type:* `list(GoogleApi.MyBusinessAccountManagement.V1.Model.Admin.t)`, *default:* `nil`) - A collection of Admin instances.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountAdmins => list(GoogleApi.MyBusinessAccountManagement.V1.Model.Admin.t()) | nil
        }

  field(:accountAdmins, as: GoogleApi.MyBusinessAccountManagement.V1.Model.Admin, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.MyBusinessAccountManagement.V1.Model.ListAccountAdminsResponse do
  def decode(value, options) do
    GoogleApi.MyBusinessAccountManagement.V1.Model.ListAccountAdminsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MyBusinessAccountManagement.V1.Model.ListAccountAdminsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
