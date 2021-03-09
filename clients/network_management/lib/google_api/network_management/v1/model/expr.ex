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

defmodule GoogleApi.NetworkManagement.V1.Model.Expr do
  @moduledoc """
  Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  *   `expression` (*type:* `String.t`, *default:* `nil`) - Textual representation of an expression in Common Expression Language syntax.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :expression => String.t() | nil,
          :location => String.t() | nil,
          :title => String.t() | nil
        }

  field(:description)
  field(:expression)
  field(:location)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.Expr do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.Expr.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.Expr do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
