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

defmodule GoogleApi.ServiceManagement.V1.Model.ConfigChange do
  @moduledoc """
  Output generated from semantically comparing two versions of a service
  configuration.

  Includes detailed information about a field that have changed with
  applicable advice about potential consequences for the change, such as
  backwards-incompatibility.

  ## Attributes

  *   `advices` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.Advice.t)`, *default:* `nil`) - Collection of advice provided for this change, useful for determining the
      possible impact of this change.
  *   `changeType` (*type:* `String.t`, *default:* `nil`) - The type for this change, either ADDED, REMOVED, or MODIFIED.
  *   `element` (*type:* `String.t`, *default:* `nil`) - Object hierarchy path to the change, with levels separated by a '.'
      character. For repeated fields, an applicable unique identifier field is
      used for the index (usually selector, name, or id). For maps, the term
      'key' is used. If the field has no unique identifier, the numeric index
      is used.
      Examples:
      - visibility.rules[selector=="google.LibraryService.ListBooks"].restriction
      - quota.metric_rules[selector=="google"].metric_costs[key=="reads"].value
      - logging.producer_destinations[0]
  *   `newValue` (*type:* `String.t`, *default:* `nil`) - Value of the changed object in the new Service configuration,
      in JSON format. This field will not be populated if ChangeType == REMOVED.
  *   `oldValue` (*type:* `String.t`, *default:* `nil`) - Value of the changed object in the old Service configuration,
      in JSON format. This field will not be populated if ChangeType == ADDED.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advices => list(GoogleApi.ServiceManagement.V1.Model.Advice.t()),
          :changeType => String.t(),
          :element => String.t(),
          :newValue => String.t(),
          :oldValue => String.t()
        }

  field(:advices, as: GoogleApi.ServiceManagement.V1.Model.Advice, type: :list)
  field(:changeType)
  field(:element)
  field(:newValue)
  field(:oldValue)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.ConfigChange do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.ConfigChange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.ConfigChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
