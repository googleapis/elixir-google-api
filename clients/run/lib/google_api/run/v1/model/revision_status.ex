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

defmodule GoogleApi.Run.V1.Model.RevisionStatus do
  @moduledoc """
  RevisionStatus communicates the observed state of the Revision (from the controller).

  ## Attributes

  *   `conditions` (*type:* `list(GoogleApi.Run.V1.Model.GoogleCloudRunV1Condition.t)`, *default:* `nil`) - Conditions communicates information about ongoing/complete reconciliation processes that bring the "spec" inline with the observed state of the world. As a Revision is being prepared, it will incrementally update conditions. Revision-specific conditions include: * "ResourcesAvailable": True when underlying resources have been provisioned. * "ContainerHealthy": True when the Revision readiness check completes. * "Active": True when the Revision may receive traffic.
  *   `imageDigest` (*type:* `String.t`, *default:* `nil`) - ImageDigest holds the resolved digest for the image specified within .Spec.Container.Image. The digest is resolved during the creation of Revision. This field holds the digest value regardless of whether a tag or digest was originally specified in the Container object.
  *   `logUrl` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the generated logging url for this particular revision based on the revision url template specified in the controller's config.
  *   `observedGeneration` (*type:* `integer()`, *default:* `nil`) - ObservedGeneration is the 'Generation' of the Revision that was last processed by the controller. Clients polling for completed reconciliation should poll until observedGeneration = metadata.generation, and the Ready condition's status is True or False.
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - Not currently used by Cloud Run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditions => list(GoogleApi.Run.V1.Model.GoogleCloudRunV1Condition.t()) | nil,
          :imageDigest => String.t() | nil,
          :logUrl => String.t() | nil,
          :observedGeneration => integer() | nil,
          :serviceName => String.t() | nil
        }

  field(:conditions, as: GoogleApi.Run.V1.Model.GoogleCloudRunV1Condition, type: :list)
  field(:imageDigest)
  field(:logUrl)
  field(:observedGeneration)
  field(:serviceName)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.RevisionStatus do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.RevisionStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.RevisionStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
