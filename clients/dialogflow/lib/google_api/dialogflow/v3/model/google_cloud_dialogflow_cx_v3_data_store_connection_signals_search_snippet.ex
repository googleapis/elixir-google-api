# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet do
  @moduledoc """
  Search snippet details.

  ## Attributes

  *   `documentTitle` (*type:* `String.t`, *default:* `nil`) - Title of the enclosing document.
  *   `documentUri` (*type:* `String.t`, *default:* `nil`) - Uri for the document. Present if specified for the document.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Text included in the prompt.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentTitle => String.t() | nil,
          :documentUri => String.t() | nil,
          :text => String.t() | nil
        }

  field(:documentTitle)
  field(:documentUri)
  field(:text)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3DataStoreConnectionSignalsSearchSnippet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
