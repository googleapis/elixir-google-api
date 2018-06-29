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

defmodule GoogleApi.Slides.V1.Model.DeleteTableColumnRequest do
  @moduledoc """
  Deletes a column from a table.

  ## Attributes

  - cellLocation (TableCellLocation): The reference table cell location from which a column will be deleted.  The column this cell spans will be deleted. If this is a merged cell, multiple columns will be deleted. If no columns remain in the table after this deletion, the whole table is deleted. Defaults to: `null`.
  - tableObjectId (String.t): The table to delete columns from. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cellLocation => GoogleApi.Slides.V1.Model.TableCellLocation.t(),
          :tableObjectId => any()
        }

  field(:cellLocation, as: GoogleApi.Slides.V1.Model.TableCellLocation)
  field(:tableObjectId)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.DeleteTableColumnRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.DeleteTableColumnRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.DeleteTableColumnRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
