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

defmodule GoogleApi.CommentAnalyzer.V1alpha1.Model.AttributeScores do
  @moduledoc """
  This holds score values for a single attribute. It contains both per-span
  scores as well as an overall summary score..

  ## Attributes

  *   `spanScores` (*type:* `list(GoogleApi.CommentAnalyzer.V1alpha1.Model.SpanScore.t)`, *default:* `nil`) - Per-span scores.
  *   `summaryScore` (*type:* `GoogleApi.CommentAnalyzer.V1alpha1.Model.Score.t`, *default:* `nil`) - Overall score for comment as a whole.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :spanScores => list(GoogleApi.CommentAnalyzer.V1alpha1.Model.SpanScore.t()),
          :summaryScore => GoogleApi.CommentAnalyzer.V1alpha1.Model.Score.t()
        }

  field(:spanScores, as: GoogleApi.CommentAnalyzer.V1alpha1.Model.SpanScore, type: :list)
  field(:summaryScore, as: GoogleApi.CommentAnalyzer.V1alpha1.Model.Score)
end

defimpl Poison.Decoder, for: GoogleApi.CommentAnalyzer.V1alpha1.Model.AttributeScores do
  def decode(value, options) do
    GoogleApi.CommentAnalyzer.V1alpha1.Model.AttributeScores.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CommentAnalyzer.V1alpha1.Model.AttributeScores do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
