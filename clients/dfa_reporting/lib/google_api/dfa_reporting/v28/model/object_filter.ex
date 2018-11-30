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

defmodule GoogleApi.DFAReporting.V28.Model.ObjectFilter do
  @moduledoc """
  Object Filter.

  ## Attributes

  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#objectFilter\&quot;. Defaults to: `null`.
  - objectIds ([String.t]): Applicable when status is ASSIGNED. The user has access to objects with these object IDs. Defaults to: `null`.
  - status (String.t): Status of the filter. NONE means the user has access to none of the objects. ALL means the user has access to all objects. ASSIGNED means the user has access to the objects with IDs in the objectIds list. Defaults to: `null`.
    - Enum - one of [ALL, ASSIGNED, NONE]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => any(),
          :objectIds => list(any()),
          :status => any()
        }

  field(:kind)
  field(:objectIds, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.ObjectFilter do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.ObjectFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.ObjectFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
