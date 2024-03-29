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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreStableFieldPathProto do
  @moduledoc """
  Represents a way to traverse nested fields by referencing their token fields. Everything starts relative to a known root message, specified externally. E.g., suppose we have a feature proto that has a lane with token 0x123 which in turn has a lane connection with token 0x456 for which we want to assert something about flowline altitudes. The field path in that case will look like: field_path: { field_num: 31 # segment } field_path: { field_num: 6 # lane version_token: "0x123" } field_path: { field_num: 8 # lane_connection version_token: "0x456" } field_path: { field_num: 3 # flow } field_path: { field_num: 1 # track } field_path: { # Note: pose is repeated. By not specifying a token we refer to all poses # in a track. field_num: 2 # pose } field_path: { field_num: 4 # altitude } This path could also be represented succinctly in a more human-friendly form as something like: segment.lane[@0x123].lane_connection[@0x456].flow.track.pose[*].altitude

  ## Attributes

  *   `fieldPath` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreStableFieldPathProtoStableFieldSelector.t)`, *default:* `nil`) - A sequence of field selectors to be traversed starting from the root message.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fieldPath =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.GeostoreStableFieldPathProtoStableFieldSelector.t()
            )
            | nil
        }

  field(:fieldPath,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreStableFieldPathProtoStableFieldSelector,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreStableFieldPathProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreStableFieldPathProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreStableFieldPathProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
