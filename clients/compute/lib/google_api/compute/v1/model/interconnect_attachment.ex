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

defmodule GoogleApi.Compute.V1.Model.InterconnectAttachment do
  @moduledoc """
  Represents an InterconnectAttachment (VLAN attachment) resource. For more information, see  Creating VLAN Attachments. (&#x3D;&#x3D; resource_for beta.interconnectAttachments &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.interconnectAttachments &#x3D;&#x3D;)

  ## Attributes

  - adminEnabled (boolean()): Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER. Defaults to: `null`.
  - bandwidth (String.t): Provisioned bandwidth capacity for the interconnectAttachment. Can be set by the partner to update the customer&#39;s provisioned bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED. Defaults to: `null`.
    - Enum - one of [BPS_100M, BPS_10G, BPS_1G, BPS_200M, BPS_2G, BPS_300M, BPS_400M, BPS_500M, BPS_50M, BPS_5G]
  - candidateSubnets ([String.t]): Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google?s edge. If not supplied, Google will randomly select an unused /29 from all of link-local space. Defaults to: `null`.
  - cloudRouterIpAddress (String.t): [Output Only] IPv4 address + prefix length to be configured on Cloud Router Interface for this interconnect attachment. Defaults to: `null`.
  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - customerRouterIpAddress (String.t): [Output Only] IPv4 address + prefix length to be configured on the customer router subinterface for this interconnect attachment. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Defaults to: `null`.
  - edgeAvailabilityDomain (String.t): Desired availability domain for the attachment. Only available for type PARTNER, at creation time. For improved reliability, customers should configure a pair of attachments with one per availability domain. The selected availability domain will be provided to the Partner via the pairing key so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY. Defaults to: `null`.
    - Enum - one of [AVAILABILITY_DOMAIN_1, AVAILABILITY_DOMAIN_2, AVAILABILITY_DOMAIN_ANY]
  - googleReferenceId (String.t): [Output Only] Google reference ID, to be used when raising support tickets with Google or otherwise to debug backend connectivity issues. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - interconnect (String.t): URL of the underlying Interconnect object that this attachment&#39;s traffic will traverse through. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of the resource. Always compute#interconnectAttachment for interconnect attachments. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - operationalStatus (String.t): [Output Only] The current status of whether or not this interconnect attachment is functional. Defaults to: `null`.
    - Enum - one of [OS_ACTIVE, OS_UNPROVISIONED]
  - pairingKey (String.t): [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of an PARTNER attachment used to initiate provisioning with a selected partner. Of the form \&quot;XXXXX/region/domain\&quot; Defaults to: `null`.
  - partnerAsn (String.t): Optional BGP ASN for the router that should be supplied by a layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED. Defaults to: `null`.
  - partnerMetadata (InterconnectAttachmentPartnerMetadata): Informational metadata about Partner attachments from Partners to display to customers. Output only for for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED. Defaults to: `null`.
  - privateInterconnectInfo (InterconnectAttachmentPrivateInfo): [Output Only] Information specific to an InterconnectAttachment. This property is populated if the interconnect that this is attached to is of type DEDICATED. Defaults to: `null`.
  - region (String.t): [Output Only] URL of the region where the regional interconnect attachment resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. Defaults to: `null`.
  - router (String.t): URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network &amp; region within which the Cloud Router is configured. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - state (String.t): [Output Only] The current state of this attachment&#39;s functionality. Defaults to: `null`.
    - Enum - one of [ACTIVE, DEFUNCT, PARTNER_REQUEST_RECEIVED, PENDING_CUSTOMER, PENDING_PARTNER, STATE_UNSPECIFIED, UNPROVISIONED]
  - type (String.t):  Defaults to: `null`.
    - Enum - one of [DEDICATED, PARTNER, PARTNER_PROVIDER]
  - vlanTag8021q (integer()): The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4094. Only specified at creation time. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminEnabled => any(),
          :bandwidth => any(),
          :candidateSubnets => list(any()),
          :cloudRouterIpAddress => any(),
          :creationTimestamp => any(),
          :customerRouterIpAddress => any(),
          :description => any(),
          :edgeAvailabilityDomain => any(),
          :googleReferenceId => any(),
          :id => any(),
          :interconnect => any(),
          :kind => any(),
          :name => any(),
          :operationalStatus => any(),
          :pairingKey => any(),
          :partnerAsn => any(),
          :partnerMetadata =>
            GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata.t(),
          :privateInterconnectInfo =>
            GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo.t(),
          :region => any(),
          :router => any(),
          :selfLink => any(),
          :state => any(),
          :type => any(),
          :vlanTag8021q => any()
        }

  field(:adminEnabled)
  field(:bandwidth)
  field(:candidateSubnets, type: :list)
  field(:cloudRouterIpAddress)
  field(:creationTimestamp)
  field(:customerRouterIpAddress)
  field(:description)
  field(:edgeAvailabilityDomain)
  field(:googleReferenceId)
  field(:id)
  field(:interconnect)
  field(:kind)
  field(:name)
  field(:operationalStatus)
  field(:pairingKey)
  field(:partnerAsn)
  field(:partnerMetadata, as: GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata)

  field(
    :privateInterconnectInfo,
    as: GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo
  )

  field(:region)
  field(:router)
  field(:selfLink)
  field(:state)
  field(:type)
  field(:vlanTag8021q)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachment do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectAttachment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
