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

defmodule GoogleApi.BigQuery.V2.Model.TableReference do
  @moduledoc """


  ## Attributes

  *   `datasetId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the dataset containing this table.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the project containing this table.
  *   `tableId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the table. The ID can contain Unicode characters in category L (letter), M (mark), N (number), Pc (connector, including underscore), Pd (dash), and Zs (space). For more information, see [General Category](https://wikipedia.org/wiki/Unicode_character_property#General_Category). The maximum length is 1,024 characters. Certain operations allow suffixing of the table ID with a partition decorator, such as `sample_table$20190123`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasetId => String.t() | nil,
          :projectId => String.t() | nil,
          :tableId => String.t() | nil
        }

  field(:datasetId)
  field(:projectId)
  field(:tableId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableReference do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableReference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
