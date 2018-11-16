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

defmodule GoogleApi.Script.V1.Model.ExecutionError do
  @moduledoc """
  An object that provides information about the nature of an error resulting from an attempted execution of a script function using the Apps Script API. If a run call succeeds but the script function (or Apps Script itself) throws an exception, the response body&#39;s error field contains a Status object. The &#x60;Status&#x60; object&#39;s &#x60;details&#x60; field contains an array with a single one of these &#x60;ExecutionError&#x60; objects.

  ## Attributes

  - errorMessage (String.t): The error message thrown by Apps Script, usually localized into the user&#39;s language. Defaults to: `null`.
  - errorType (String.t): The error type, for example &#x60;TypeError&#x60; or &#x60;ReferenceError&#x60;. If the error type is unavailable, this field is not included. Defaults to: `null`.
  - scriptStackTraceElements ([ScriptStackTraceElement]): An array of objects that provide a stack trace through the script to show where the execution failed, with the deepest call first. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorMessage => any(),
          :errorType => any(),
          :scriptStackTraceElements => list(GoogleApi.Script.V1.Model.ScriptStackTraceElement.t())
        }

  field(:errorMessage)
  field(:errorType)

  field(
    :scriptStackTraceElements,
    as: GoogleApi.Script.V1.Model.ScriptStackTraceElement,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.ExecutionError do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.ExecutionError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.ExecutionError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
