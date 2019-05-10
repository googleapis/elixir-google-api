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

defmodule GoogleApi.Monitoring.V3.Model.InternalChecker do
  @moduledoc """
  An internal checker allows uptime checks to run on private/internal GCP resources.DEPRECATED. Use PrivateChecker instead.

  ## Attributes

  - displayName (String.t): The checker&#39;s human-readable name. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced. Defaults to: `null`.
  - gcpZone (String.t): The GCP zone the uptime check should egress from. Only respected for internal uptime checks, where internal_network is specified. Defaults to: `null`.
  - name (String.t): A unique resource name for this InternalChecker. The format is:projects/[PROJECT_ID]/internalCheckers/[INTERNAL_CHECKER_ID].PROJECT_ID is the stackdriver workspace project for the uptime check config associated with the internal checker. Defaults to: `null`.
  - network (String.t): The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the internal resource lives (ex: \&quot;default\&quot;). Defaults to: `null`.
  - peerProjectId (String.t): The GCP project_id where the internal checker lives. Not necessary the same as the workspace project. Defaults to: `null`.
  - state (String.t): The current operational state of the internal checker. Defaults to: `null`.
    - Enum - one of [UNSPECIFIED, CREATING, RUNNING]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => any(),
          :gcpZone => any(),
          :name => any(),
          :network => any(),
          :peerProjectId => any(),
          :state => any()
        }

  field(:displayName)
  field(:gcpZone)
  field(:name)
  field(:network)
  field(:peerProjectId)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.InternalChecker do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.InternalChecker.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.InternalChecker do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
