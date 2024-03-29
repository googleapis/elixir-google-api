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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerPolarQuestion do
  @moduledoc """
  Indicates a question, requesting the truth-value/actualness of a state of affairs denoted by the expression encompassed by the FunctionCall this appears on. Often this is a yes/no question, e.g. [was tom cruise in top gun] : ActedIn.polar(Movie=/m/top_gun, Actor=/m/tom_cruise) Not all polar questions will necessarily have a yes/no answer; the expected resolution of a polar question is a StateOfAffairs. e.g. [is chocolate good for you] : FoodItemAttribute.polar(/m/chocolate, /m/healthy) which may not have a simple yes/no answer. See go/mrf-polar-questions for details.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerPolarQuestion do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerPolarQuestion.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMarkerPolarQuestion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
