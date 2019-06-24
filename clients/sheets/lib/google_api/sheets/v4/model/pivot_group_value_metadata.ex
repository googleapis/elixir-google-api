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

defmodule GoogleApi.Sheets.V4.Model.PivotGroupValueMetadata do
  @moduledoc """
  Metadata about a value in a pivot grouping.

  ## Attributes

  *   `collapsed` (*type:* `boolean()`, *default:* `nil`) - True if the data corresponding to the value is collapsed.
  *   `value` (*type:* `GoogleApi.Sheets.V4.Model.ExtendedValue.t`, *default:* `nil`) - The calculated value the metadata corresponds to.
      (Note that formulaValue is not valid,
       because the values will be calculated.)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collapsed => boolean(),
          :value => GoogleApi.Sheets.V4.Model.ExtendedValue.t()
        }

  field(:collapsed)
  field(:value, as: GoogleApi.Sheets.V4.Model.ExtendedValue)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.PivotGroupValueMetadata do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.PivotGroupValueMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.PivotGroupValueMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
