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

defmodule GoogleApi.Content.V21.Model.ProductViewItemIssue do
  @moduledoc """
  Item issue associated with the product.

  ## Attributes

  *   `issueType` (*type:* `GoogleApi.Content.V21.Model.ProductViewItemIssueItemIssueType.t`, *default:* `nil`) - Item issue type.
  *   `resolution` (*type:* `String.t`, *default:* `nil`) - Item issue resolution.
  *   `severity` (*type:* `GoogleApi.Content.V21.Model.ProductViewItemIssueItemIssueSeverity.t`, *default:* `nil`) - Item issue severity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :issueType => GoogleApi.Content.V21.Model.ProductViewItemIssueItemIssueType.t() | nil,
          :resolution => String.t() | nil,
          :severity => GoogleApi.Content.V21.Model.ProductViewItemIssueItemIssueSeverity.t() | nil
        }

  field(:issueType, as: GoogleApi.Content.V21.Model.ProductViewItemIssueItemIssueType)
  field(:resolution)
  field(:severity, as: GoogleApi.Content.V21.Model.ProductViewItemIssueItemIssueSeverity)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ProductViewItemIssue do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ProductViewItemIssue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ProductViewItemIssue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
