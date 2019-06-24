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

defmodule GoogleApi.Content.V2.Model.ProductsCustomBatchResponse do
  @moduledoc """


  ## Attributes

  *   `entries` (*type:* `list(GoogleApi.Content.V2.Model.ProductsCustomBatchResponseEntry.t)`, *default:* `nil`) - The result of the execution of the batch requests.
  *   `kind` (*type:* `String.t`, *default:* `content#productsCustomBatchResponse`) - Identifies what kind of resource this is. Value: the fixed string "content#productsCustomBatchResponse".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entries => list(GoogleApi.Content.V2.Model.ProductsCustomBatchResponseEntry.t()),
          :kind => String.t()
        }

  field(:entries, as: GoogleApi.Content.V2.Model.ProductsCustomBatchResponseEntry, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.ProductsCustomBatchResponse do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.ProductsCustomBatchResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.ProductsCustomBatchResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
