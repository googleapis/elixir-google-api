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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions do
  @moduledoc """


  ## Attributes

  - contexts ([CreativeContexts1]): All known contexts/restrictions. Defaults to: `null`.
  - disapprovalReasons ([CreativeDisapprovalReasons]): The reasons for disapproval within this restriction, if any. Note that not all disapproval reasons may be categorized, so it is possible for the creative to have a status of DISAPPROVED or CONDITIONALLY_APPROVED with an empty list for disapproval_reasons. In this case, please reach out to your TAM to help debug the issue. Defaults to: `null`.
  - reason (String.t): Why the creative is ineligible to serve in this context (e.g., it has been explicitly disapproved or is pending review). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contexts => list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeContexts1.t()),
          :disapprovalReasons =>
            list(GoogleApi.AdExchangeBuyer.V14.Model.CreativeDisapprovalReasons.t()),
          :reason => any()
        }

  field(:contexts, as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeContexts1, type: :list)

  field(:disapprovalReasons,
    as: GoogleApi.AdExchangeBuyer.V14.Model.CreativeDisapprovalReasons,
    type: :list
  )

  field(:reason)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativeServingRestrictions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
