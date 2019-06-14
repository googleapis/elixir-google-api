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

defmodule GoogleApi.AdSenseHost.V41.Model.UrlChannel do
  @moduledoc """


  ## Attributes

  - id (String.t): Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. Defaults to `nil`.
  - kind (String.t): Kind of resource this is, in this case adsensehost#urlChannel. Defaults to `adsensehost#urlChannel`.
  - urlPattern (String.t): URL Pattern of this URL channel. Does not include "http://" or "https://". Example: www.example.com/home Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :kind => String.t(),
          :urlPattern => String.t()
        }

  field(:id)
  field(:kind)
  field(:urlPattern)
end

defimpl Poison.Decoder, for: GoogleApi.AdSenseHost.V41.Model.UrlChannel do
  def decode(value, options) do
    GoogleApi.AdSenseHost.V41.Model.UrlChannel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSenseHost.V41.Model.UrlChannel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
