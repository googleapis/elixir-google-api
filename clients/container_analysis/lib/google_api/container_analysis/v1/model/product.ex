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

defmodule GoogleApi.ContainerAnalysis.V1.Model.Product do
  @moduledoc """
  Product contains information about a product and how to uniquely identify it.

  ## Attributes

  *   `genericUri` (*type:* `String.t`, *default:* `nil`) - Contains a URI which is vendor-specific. Example: The artifact repository URL of an image.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Token that identifies a product so that it can be referred to from other parts in the document. There is no predefined format as long as it uniquely identifies a group in the context of the current document.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :genericUri => String.t() | nil,
          :id => String.t() | nil,
          :name => String.t() | nil
        }

  field(:genericUri)
  field(:id)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1.Model.Product do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
