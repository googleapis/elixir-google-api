# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DoubleClickSearch.V2.Model.SavedColumnList do
  @moduledoc """
  A list of saved columns. Advertisers create saved columns to report on Floodlight activities, Google Analytics goals, or custom KPIs. To request reports with saved columns, you'll need the saved column names that are available from this list.

  ## Attributes

  - items (list(GoogleApi.DoubleClickSearch.V2.Model.SavedColumn.t)): The saved columns being requested. Defaults to `nil`.
  - kind (String.t): Identifies this as a SavedColumnList resource. Value: the fixed string doubleclicksearch#savedColumnList. Defaults to `doubleclicksearch#savedColumnList`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.DoubleClickSearch.V2.Model.SavedColumn.t()),
          :kind => String.t()
        }

  field(:items, as: GoogleApi.DoubleClickSearch.V2.Model.SavedColumn, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.SavedColumnList do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.SavedColumnList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.SavedColumnList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
