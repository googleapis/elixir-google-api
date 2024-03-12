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

defmodule GoogleApi.Compute.V1.Model.SecurityPolicyRule do
  @moduledoc """
  Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - The Action to perform when the rule is matched. The following are the valid actions: - allow: allow access to target. - deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for `STATUS` are 403, 404, and 502. - rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rate_limit_options to be set. - redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR. - throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rate_limit_options to be set for this. 
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `headerAction` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRuleHttpHeaderAction.t`, *default:* `nil`) - Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  *   `kind` (*type:* `String.t`, *default:* `compute#securityPolicyRule`) - [Output only] Type of the resource. Always compute#securityPolicyRule for security policy rules
  *   `match` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcher.t`, *default:* `nil`) - A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  *   `networkMatch` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRuleNetworkMatcher.t`, *default:* `nil`) - A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced. The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields'). Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds. Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all. For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet. Example: networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4_fragment_offset" values: - "1-0x1fff" The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4_fragment_offset" with a value between 1 and 0x1fff inclusive.
  *   `preconfiguredWafConfig` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRulePreconfiguredWafConfig.t`, *default:* `nil`) - Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  *   `preview` (*type:* `boolean()`, *default:* `nil`) - If set to true, the specified action is not enforced.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  *   `rateLimitOptions` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptions.t`, *default:* `nil`) - Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  *   `redirectOptions` (*type:* `GoogleApi.Compute.V1.Model.SecurityPolicyRuleRedirectOptions.t`, *default:* `nil`) - Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :description => String.t() | nil,
          :headerAction =>
            GoogleApi.Compute.V1.Model.SecurityPolicyRuleHttpHeaderAction.t() | nil,
          :kind => String.t() | nil,
          :match => GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcher.t() | nil,
          :networkMatch => GoogleApi.Compute.V1.Model.SecurityPolicyRuleNetworkMatcher.t() | nil,
          :preconfiguredWafConfig =>
            GoogleApi.Compute.V1.Model.SecurityPolicyRulePreconfiguredWafConfig.t() | nil,
          :preview => boolean() | nil,
          :priority => integer() | nil,
          :rateLimitOptions =>
            GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptions.t() | nil,
          :redirectOptions =>
            GoogleApi.Compute.V1.Model.SecurityPolicyRuleRedirectOptions.t() | nil
        }

  field(:action)
  field(:description)
  field(:headerAction, as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleHttpHeaderAction)
  field(:kind)
  field(:match, as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleMatcher)
  field(:networkMatch, as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleNetworkMatcher)

  field(:preconfiguredWafConfig,
    as: GoogleApi.Compute.V1.Model.SecurityPolicyRulePreconfiguredWafConfig
  )

  field(:preview)
  field(:priority)
  field(:rateLimitOptions, as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleRateLimitOptions)
  field(:redirectOptions, as: GoogleApi.Compute.V1.Model.SecurityPolicyRuleRedirectOptions)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SecurityPolicyRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SecurityPolicyRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SecurityPolicyRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
