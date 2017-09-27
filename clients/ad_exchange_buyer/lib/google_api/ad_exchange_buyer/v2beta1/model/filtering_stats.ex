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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteringStats do
  @moduledoc """
  @OutputOnly Filtering reasons for this creative during a period of a single day (from midnight to midnight Pacific).

  ## Attributes

  - date (DateTime): The day during which the data was collected. The data is collected from 00:00:00 to 23:59:59 PT. During switches from PST to PDT and back, the day may contain 23 or 25 hours of data instead of the usual 24. Defaults to: `null`.
  - reasons (List[Reason]): The set of filtering reasons for this date. Defaults to: `null`.
  """

  defstruct [
    :"date",
    :"reasons"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteringStats do
  import GoogleApi.AdExchangeBuyer.V2beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"reasons", :list, GoogleApi.AdExchangeBuyer.V2beta1.Model.Reason, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteringStats do
  def encode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Deserializer.serialize_non_nil(value, options)
  end
end

