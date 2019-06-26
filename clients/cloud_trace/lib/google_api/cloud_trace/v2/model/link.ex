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

defmodule GoogleApi.CloudTrace.V2.Model.Link do
  @moduledoc """
  A pointer from the current span to another span in the same trace or in a
  different trace. For example, this can be used in batching operations,
  where a single batch handler processes multiple requests from different
  traces or when the handler receives a request from a different project.

  ## Attributes

  *   `attributes` (*type:* `GoogleApi.CloudTrace.V2.Model.Attributes.t`, *default:* `nil`) - A set of attributes on the link. You have have up to  32 attributes per
      link.
  *   `spanId` (*type:* `String.t`, *default:* `nil`) - The [SPAN_ID] for a span within a trace.
  *   `traceId` (*type:* `String.t`, *default:* `nil`) - The [TRACE_ID] for a trace within a project.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The relationship of the current span relative to the linked span.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributes => GoogleApi.CloudTrace.V2.Model.Attributes.t(),
          :spanId => String.t(),
          :traceId => String.t(),
          :type => String.t()
        }

  field(:attributes, as: GoogleApi.CloudTrace.V2.Model.Attributes)
  field(:spanId)
  field(:traceId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTrace.V2.Model.Link do
  def decode(value, options) do
    GoogleApi.CloudTrace.V2.Model.Link.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTrace.V2.Model.Link do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
