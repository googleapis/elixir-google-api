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

defmodule GoogleApi.Calendar.V3.Model.EventCreator do
  @moduledoc """
  The creator of the event. Read-only.

  ## Attributes

  - displayName (String.t): The creator&#39;s name, if available. Defaults to: `null`.
  - email (String.t): The creator&#39;s email address, if available. Defaults to: `null`.
  - id (String.t): The creator&#39;s Profile ID, if available. It corresponds to the id field in the People collection of the Google+ API Defaults to: `null`.
  - self (boolean()): Whether the creator corresponds to the calendar on which this copy of the event appears. Read-only. The default is False. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => any(),
          :email => any(),
          :id => any(),
          :self => any()
        }

  field(:displayName)
  field(:email)
  field(:id)
  field(:self)
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.EventCreator do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventCreator.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.EventCreator do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
