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

defmodule GoogleApi.Content.V2.Model.DatafeedStatusError do
  @moduledoc """
  An error occurring in the feed, like "invalid price".

  ## Attributes

  *   `code` (*type:* `String.t`, *default:* `nil`) - The code of the error, e.g., "validation/invalid_value".
  *   `count` (*type:* `String.t`, *default:* `nil`) - The number of occurrences of the error in the feed.
  *   `examples` (*type:* `list(GoogleApi.Content.V2.Model.DatafeedStatusExample.t)`, *default:* `nil`) - A list of example occurrences of the error, grouped by product.
  *   `message` (*type:* `String.t`, *default:* `nil`) - The error message, e.g., "Invalid price".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => String.t(),
          :count => String.t(),
          :examples => list(GoogleApi.Content.V2.Model.DatafeedStatusExample.t()),
          :message => String.t()
        }

  field(:code)
  field(:count)
  field(:examples, as: GoogleApi.Content.V2.Model.DatafeedStatusExample, type: :list)
  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.DatafeedStatusError do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.DatafeedStatusError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.DatafeedStatusError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
