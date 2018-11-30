# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.FusionTables.V2.Model.StyleSettingList do
  @moduledoc """
  Represents a list of styles for a given table.

  ## Attributes

  - items ([StyleSetting]): All requested style settings. Defaults to: `null`.
  - kind (String.t): The kind of item this is. For a style list, this is always fusiontables#styleSettingList . Defaults to: `null`.
  - nextPageToken (String.t): Token used to access the next page of this result. No token is displayed if there are no more styles left. Defaults to: `null`.
  - totalItems (integer()): Total number of styles for the table. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.FusionTables.V2.Model.StyleSetting.t()),
          :kind => any(),
          :nextPageToken => any(),
          :totalItems => any()
        }

  field(:items, as: GoogleApi.FusionTables.V2.Model.StyleSetting, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:totalItems)
end

defimpl Poison.Decoder, for: GoogleApi.FusionTables.V2.Model.StyleSettingList do
  def decode(value, options) do
    GoogleApi.FusionTables.V2.Model.StyleSettingList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FusionTables.V2.Model.StyleSettingList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
