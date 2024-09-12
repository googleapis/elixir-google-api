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

defmodule GoogleApi.Logging.V2.Model.LogScope do
  @moduledoc """
  Describes a group of resources to read log entries from.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of the log scope.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Describes this log scope.The maximum length of the description is 8000 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the log scope.For example:projects/my-project/locations/global/logScopes/my-log-scope
  *   `resourceNames` (*type:* `list(String.t)`, *default:* `nil`) - Required. Names of one or more parent resources: projects/[PROJECT_ID]May alternatively be one or more views: projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of the log scope.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :name => String.t() | nil,
          :resourceNames => list(String.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:name)
  field(:resourceNames, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.LogScope do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.LogScope.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.LogScope do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
