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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.QuotaLimit do
  @moduledoc """
  `QuotaLimit` defines a specific limit that applies over a specified duration for a limit type. There can be at most one limit for a duration and limit type combination defined within a `QuotaGroup`.

  ## Attributes

  *   `defaultLimit` (*type:* `String.t`, *default:* `nil`) - Default number of tokens that can be consumed during the specified duration. This is the number of tokens assigned when a client application developer activates the service for his/her project. Specifying a value of 0 will block all requests. This can be used if you are provisioning quota to selected consumers and blocking others. Similarly, a value of -1 will indicate an unlimited quota. No other negative values are allowed. Used by group-based quotas only.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. User-visible, extended description for this quota limit. Should be used only when more context is needed to understand this limit than provided by the limit's display name (see: `display_name`).
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User-visible display name for this limit. Optional. If not set, the UI will provide a default display name based on the quota configuration. This field can be used to override the default display name generated from the configuration.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - Duration of this limit in textual notation. Must be "100s" or "1d". Used by group-based quotas only.
  *   `freeTier` (*type:* `String.t`, *default:* `nil`) - Free tier value displayed in the Developers Console for this limit. The free tier is the number of tokens that will be subtracted from the billed amount when billing is enabled. This field can only be set on a limit with duration "1d", in a billable group; it is invalid on any other limit. If this field is not set, it defaults to 0, indicating that there is no free tier for this service. Used by group-based quotas only.
  *   `maxLimit` (*type:* `String.t`, *default:* `nil`) - Maximum number of tokens that can be consumed during the specified duration. Client application developers can override the default limit up to this maximum. If specified, this value cannot be set to a value less than the default limit. If not specified, it is set to the default limit. To allow clients to apply overrides with no upper bound, set this to -1, indicating unlimited maximum quota. Used by group-based quotas only.
  *   `metric` (*type:* `String.t`, *default:* `nil`) - The name of the metric this quota limit applies to. The quota limits with the same metric will be checked together during runtime. The metric must be defined within the service config.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the quota limit. The name must be provided, and it must be unique within the service. The name can only include alphanumeric characters as well as '-'. The maximum length of the limit name is 64 characters.
  *   `unit` (*type:* `String.t`, *default:* `nil`) - Specify the unit of the quota limit. It uses the same syntax as Metric.unit. The supported unit kinds are determined by the quota backend system. Here are some examples: * "1/min/{project}" for quota per minute per project. Note: the order of unit components is insignificant. The "1" at the beginning is required to follow the metric unit syntax.
  *   `values` (*type:* `map()`, *default:* `nil`) - Tiered limit values. You must specify this as a key:value pair, with an integer value that is the maximum number of requests allowed for the specified unit. Currently only STANDARD is supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultLimit => String.t(),
          :description => String.t(),
          :displayName => String.t(),
          :duration => String.t(),
          :freeTier => String.t(),
          :maxLimit => String.t(),
          :metric => String.t(),
          :name => String.t(),
          :unit => String.t(),
          :values => map()
        }

  field(:defaultLimit)
  field(:description)
  field(:displayName)
  field(:duration)
  field(:freeTier)
  field(:maxLimit)
  field(:metric)
  field(:name)
  field(:unit)
  field(:values, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.QuotaLimit do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.QuotaLimit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.QuotaLimit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
