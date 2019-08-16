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

defmodule GoogleApi.Dataproc.V1.Model.ParameterValidation do
  @moduledoc """
  Configuration for parameter validation.

  ## Attributes

  *   `regex` (*type:* `GoogleApi.Dataproc.V1.Model.RegexValidation.t`, *default:* `nil`) - Validation based on regular expressions.
  *   `values` (*type:* `GoogleApi.Dataproc.V1.Model.ValueValidation.t`, *default:* `nil`) - Validation based on a list of allowed values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :regex => GoogleApi.Dataproc.V1.Model.RegexValidation.t(),
          :values => GoogleApi.Dataproc.V1.Model.ValueValidation.t()
        }

  field(:regex, as: GoogleApi.Dataproc.V1.Model.RegexValidation)
  field(:values, as: GoogleApi.Dataproc.V1.Model.ValueValidation)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ParameterValidation do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ParameterValidation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ParameterValidation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
