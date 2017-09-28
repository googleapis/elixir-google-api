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

defmodule GoogleApi.AdSense.V14.Model.Alert do
  @moduledoc """
  

  ## Attributes

  - id (String): Unique identifier of this alert. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format. Defaults to: `null`.
  - isDismissible (Boolean): Whether this alert can be dismissed. Defaults to: `null`.
  - kind (String): Kind of resource this is, in this case adsense#alert. Defaults to: `null`.
  - message (String): The localized alert message. Defaults to: `null`.
  - severity (String): Severity of this alert. Possible values: INFO, WARNING, SEVERE. Defaults to: `null`.
  - type (String): Type of this alert. Possible values: SELF_HOLD, MIGRATED_TO_BILLING3, ADDRESS_PIN_VERIFICATION, PHONE_PIN_VERIFICATION, CORPORATE_ENTITY, GRAYLISTED_PUBLISHER, API_HOLD. Defaults to: `null`.
  """

  defstruct [
    :"id",
    :"isDismissible",
    :"kind",
    :"message",
    :"severity",
    :"type"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V14.Model.Alert do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V14.Model.Alert do
  def encode(value, options) do
    GoogleApi.AdSense.V14.Deserializer.serialize_non_nil(value, options)
  end
end

