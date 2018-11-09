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

defmodule GoogleApi.AndroidPublisher.V2.Model.Season do
  @moduledoc """


  ## Attributes

  - end (MonthDay): Inclusive end date of the recurrence period. Defaults to: `null`.
  - prorations ([Prorate]): Optionally present list of prorations for the season. Each proration is a one-off discounted entry into a subscription. Each proration contains the first date on which the discount is available and the new pricing information. Defaults to: `null`.
  - start (MonthDay): Inclusive start date of the recurrence period. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :end => GoogleApi.AndroidPublisher.V2.Model.MonthDay.t(),
          :prorations => list(GoogleApi.AndroidPublisher.V2.Model.Prorate.t()),
          :start => GoogleApi.AndroidPublisher.V2.Model.MonthDay.t()
        }

  field(:end, as: GoogleApi.AndroidPublisher.V2.Model.MonthDay)
  field(:prorations, as: GoogleApi.AndroidPublisher.V2.Model.Prorate, type: :list)
  field(:start, as: GoogleApi.AndroidPublisher.V2.Model.MonthDay)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V2.Model.Season do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V2.Model.Season.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V2.Model.Season do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
