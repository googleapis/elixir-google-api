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

defmodule GoogleApi.Language.V1.Model.XPSTablesModelStructureModelParametersParameter do
  @moduledoc """


  ## Attributes

  *   `floatValue` (*type:* `float()`, *default:* `nil`) - Float type parameter value.
  *   `intValue` (*type:* `String.t`, *default:* `nil`) - Integer type parameter value.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Parameter name.
  *   `stringValue` (*type:* `String.t`, *default:* `nil`) - String type parameter value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :floatValue => float() | nil,
          :intValue => String.t() | nil,
          :name => String.t() | nil,
          :stringValue => String.t() | nil
        }

  field(:floatValue)
  field(:intValue)
  field(:name)
  field(:stringValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.Language.V1.Model.XPSTablesModelStructureModelParametersParameter do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSTablesModelStructureModelParametersParameter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Language.V1.Model.XPSTablesModelStructureModelParametersParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
