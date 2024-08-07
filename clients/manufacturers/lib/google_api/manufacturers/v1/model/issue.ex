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

defmodule GoogleApi.Manufacturers.V1.Model.Issue do
  @moduledoc """
  Product issue.

  ## Attributes

  *   `applicableCountries` (*type:* `list(String.t)`, *default:* `nil`) - Output only. List of country codes (ISO 3166-1 alpha-2) where issue applies to the manufacturer product.
  *   `attribute` (*type:* `String.t`, *default:* `nil`) - If present, the attribute that triggered the issue. For more information about attributes, see https://support.google.com/manufacturers/answer/6124116.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Longer description of the issue focused on how to resolve it.
  *   `destination` (*type:* `String.t`, *default:* `nil`) - The destination this issue applies to.
  *   `resolution` (*type:* `String.t`, *default:* `nil`) - What needs to happen to resolve the issue.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity of the issue.
  *   `timestamp` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when this issue appeared.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Short title describing the nature of the issue.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The server-generated type of the issue, for example, “INCORRECT_TEXT_FORMATTING”, “IMAGE_NOT_SERVEABLE”, etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicableCountries => list(String.t()) | nil,
          :attribute => String.t() | nil,
          :description => String.t() | nil,
          :destination => String.t() | nil,
          :resolution => String.t() | nil,
          :severity => String.t() | nil,
          :timestamp => DateTime.t() | nil,
          :title => String.t() | nil,
          :type => String.t() | nil
        }

  field(:applicableCountries, type: :list)
  field(:attribute)
  field(:description)
  field(:destination)
  field(:resolution)
  field(:severity)
  field(:timestamp, as: DateTime)
  field(:title)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.Issue do
  def decode(value, options) do
    GoogleApi.Manufacturers.V1.Model.Issue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.Issue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
