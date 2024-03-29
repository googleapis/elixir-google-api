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

defmodule GoogleApi.ServiceControl.V1.Model.ResourceInfo do
  @moduledoc """
  Describes a resource associated with this operation.

  ## Attributes

  *   `permission` (*type:* `String.t`, *default:* `nil`) - The resource permission required for this request.
  *   `resourceContainer` (*type:* `String.t`, *default:* `nil`) - The identifier of the parent of this resource instance. Must be in one of the following formats: - `projects/` - `folders/` - `organizations/`
  *   `resourceLocation` (*type:* `String.t`, *default:* `nil`) - The location of the resource. If not empty, the resource will be checked against location policy. The value must be a valid zone, region or multiregion. For example: "europe-west4" or "northamerica-northeast1-a"
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Name of the resource. This is used for auditing purposes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permission => String.t() | nil,
          :resourceContainer => String.t() | nil,
          :resourceLocation => String.t() | nil,
          :resourceName => String.t() | nil
        }

  field(:permission)
  field(:resourceContainer)
  field(:resourceLocation)
  field(:resourceName)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.ResourceInfo do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.ResourceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.ResourceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
