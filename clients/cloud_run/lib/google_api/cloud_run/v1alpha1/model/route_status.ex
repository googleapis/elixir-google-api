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

defmodule GoogleApi.CloudRun.V1alpha1.Model.RouteStatus do
  @moduledoc """
  RouteStatus communicates the observed state of the Route (from the
  controller).

  ## Attributes

  *   `address` (*type:* `GoogleApi.CloudRun.V1alpha1.Model.Addressable.t`, *default:* `nil`) - Similar to url, information on where the service is available on HTTP.
  *   `conditions` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.RouteCondition.t)`, *default:* `nil`) - Conditions communicates information about ongoing/complete
      reconciliation processes that bring the "spec" inline with the observed
      state of the world.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - Deprecated - use url instead.
      Domain holds the top-level domain that will distribute traffic over the
      provided targets.
  *   `domainInternal` (*type:* `String.t`, *default:* `nil`) - Deprecated - use address instead.
      For Cloud Run, identifical to domain.
  *   `observedGeneration` (*type:* `integer()`, *default:* `nil`) - ObservedGeneration is the 'Generation' of the Route that
      was last processed by the controller.

      Clients polling for completed reconciliation should poll until
      observedGeneration = metadata.generation and the Ready condition's status
      is True or False.

      Note that providing a trafficTarget that only has a configurationName will
      result in a Route that does not increment either its metadata.generation or
      its observedGeneration, as new "latest ready" revisions from the
      Configuration are processed without an update to the Route's spec.
  *   `traffic` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget.t)`, *default:* `nil`) - Traffic holds the configured traffic distribution.
      These entries will always contain RevisionName references.
      When ConfigurationName appears in the spec, this will hold the
      LatestReadyRevisionName that we last observed.
  *   `url` (*type:* `String.t`, *default:* `nil`) - URL holds the url that will distribute traffic over the provided traffic
      targets. It generally has the form
      https://{route-hash}-{project-hash}-{cluster-level-suffix}.a.run.app
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => GoogleApi.CloudRun.V1alpha1.Model.Addressable.t(),
          :conditions => list(GoogleApi.CloudRun.V1alpha1.Model.RouteCondition.t()),
          :domain => String.t(),
          :domainInternal => String.t(),
          :observedGeneration => integer(),
          :traffic => list(GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget.t()),
          :url => String.t()
        }

  field(:address, as: GoogleApi.CloudRun.V1alpha1.Model.Addressable)
  field(:conditions, as: GoogleApi.CloudRun.V1alpha1.Model.RouteCondition, type: :list)
  field(:domain)
  field(:domainInternal)
  field(:observedGeneration)
  field(:traffic, as: GoogleApi.CloudRun.V1alpha1.Model.TrafficTarget, type: :list)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.RouteStatus do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.RouteStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.RouteStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
