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

defmodule GoogleApi.ServiceDirectory.V1beta1.Model.Namespace do
  @moduledoc """
  A container for services. Namespaces allow administrators to group services together and define permissions for a collection of services.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the namespace was created.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. A globally unique identifier (in UUID4 format) for this namespace.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the namespace was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:labels, type: :map)
  field(:name)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceDirectory.V1beta1.Model.Namespace do
  def decode(value, options) do
    GoogleApi.ServiceDirectory.V1beta1.Model.Namespace.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceDirectory.V1beta1.Model.Namespace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
