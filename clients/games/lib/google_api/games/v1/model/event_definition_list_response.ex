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

defmodule GoogleApi.Games.V1.Model.EventDefinitionListResponse do
  @moduledoc """
  This is a JSON template for a ListDefinitions response.

  ## Attributes

  - items (list(GoogleApi.Games.V1.Model.EventDefinition.t)): The event definitions. Defaults to `nil`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#eventDefinitionListResponse. Defaults to `games#eventDefinitionListResponse`.
  - nextPageToken (String.t): The pagination token for the next page of results. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Games.V1.Model.EventDefinition.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:items, as: GoogleApi.Games.V1.Model.EventDefinition, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.EventDefinitionListResponse do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.EventDefinitionListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.EventDefinitionListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
