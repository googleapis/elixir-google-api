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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerStateOfAffairs do
  @moduledoc """
  Indicates a reference to a particular state of affairs denoted by the expression encompassed by the FunctionCall this appears on. The state may be actual e.g. [new york is a city] : IsA.state(/m/new_york, /m/city) or not e.g. [1+1=3] : Addition.state(Sum=3, Addend=1, Addend=1) The state can also represent an proposition of an action, e.g. [cinar gave jason a cookie] : Give.state(Giver=cinar, Receiver=jason, Object=cookie) See go/mrf-polar-questions for details.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerStateOfAffairs do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerStateOfAffairs.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerStateOfAffairs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
