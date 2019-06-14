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

defmodule GoogleApi.Script.V1.Model.ExecutionRequest do
  @moduledoc """
  A request to run the function in a script. The script is identified by the
  specified `script_id`. Executing a function on a script returns results
  based on the implementation of the script.

  ## Attributes

  - devMode (boolean()): If `true` and the user is an owner of the script, the script runs at the
  most recently saved version rather than the version deployed for use with
  the Apps Script API. Optional; default is `false`. Defaults to `nil`.
  - function (String.t): The name of the function to execute in the given script. The name does not
  include parentheses or parameters. It can reference a function in an
  included library such as `Library.libFunction1`. Defaults to `nil`.
  - parameters (list(any())): The parameters to be passed to the function being executed. The object type
  for each parameter should match the expected type in Apps Script.
  Parameters cannot be Apps Script-specific object types (such as a
  `Document` or a `Calendar`); they can only be primitive types such as
  `string`, `number`, `array`, `object`, or `boolean`. Optional. Defaults to `nil`.
  - sessionState (String.t): <b>Deprecated</b>. For use with Android add-ons only. An ID that represents
  the user's current session in the Android app for Google Docs or Sheets,
  included as extra data in the
  [Intent](https://developer.android.com/guide/components/intents-filters.html)
  that launches the add-on. When an Android add-on is run with a session
  state, it gains the privileges of a
  [bound](https://developers.google.com/apps-script/guides/bound)
  script&mdash;that is, it can access information like the user's current
  cursor position (in Docs) or selected cell (in Sheets). To retrieve the
  state, call
  `Intent.getStringExtra("com.google.android.apps.docs.addons.SessionState")`.
  Optional. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :devMode => boolean(),
          :function => String.t(),
          :parameters => list(any()),
          :sessionState => String.t()
        }

  field(:devMode)
  field(:function)
  field(:parameters, type: :list)
  field(:sessionState)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.ExecutionRequest do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.ExecutionRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.ExecutionRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
