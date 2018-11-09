# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V28.Model.DfpSettings do
  @moduledoc """
  Google Ad Manager Settings

  ## Attributes

  - dfpNetworkCode (String.t): Ad Manager network code for this directory site. Defaults to: `null`.
  - dfpNetworkName (String.t): Ad Manager network name for this directory site. Defaults to: `null`.
  - programmaticPlacementAccepted (boolean()): Whether this directory site accepts programmatic placements. Defaults to: `null`.
  - pubPaidPlacementAccepted (boolean()): Whether this directory site accepts publisher-paid tags. Defaults to: `null`.
  - publisherPortalOnly (boolean()): Whether this directory site is available only via Publisher Portal. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dfpNetworkCode => any(),
          :dfpNetworkName => any(),
          :programmaticPlacementAccepted => any(),
          :pubPaidPlacementAccepted => any(),
          :publisherPortalOnly => any()
        }

  field(:dfpNetworkCode)
  field(:dfpNetworkName)
  field(:programmaticPlacementAccepted)
  field(:pubPaidPlacementAccepted)
  field(:publisherPortalOnly)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.DfpSettings do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.DfpSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.DfpSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
