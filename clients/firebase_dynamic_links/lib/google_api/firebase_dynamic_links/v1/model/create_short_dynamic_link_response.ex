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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse do
  @moduledoc """
  Response to create a short Dynamic Link.

  ## Attributes

  - previewLink (String.t): Preview link to show the link flow chart. (debug info.) Defaults to `nil`.
  - shortLink (String.t): Short Dynamic Link value. e.g. https://abcd.app.goo.gl/wxyz Defaults to `nil`.
  - warning (list(GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkWarning.t)): Information about potential warnings on link creation. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :previewLink => String.t(),
          :shortLink => String.t(),
          :warning => list(GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkWarning.t())
        }

  field(:previewLink)
  field(:shortLink)
  field(:warning, as: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkWarning, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.FirebaseDynamicLinks.V1.Model.CreateShortDynamicLinkResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
