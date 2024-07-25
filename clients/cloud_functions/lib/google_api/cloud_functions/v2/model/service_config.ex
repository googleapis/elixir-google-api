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

defmodule GoogleApi.CloudFunctions.V2.Model.ServiceConfig do
  @moduledoc """
  Describes the Service being deployed. Currently Supported : Cloud Run (fully managed).

  ## Attributes

  *   `allTrafficOnLatestRevision` (*type:* `boolean()`, *default:* `nil`) - Whether 100% of traffic is routed to the latest revision. On CreateFunction and UpdateFunction, when set to true, the revision being deployed will serve 100% of traffic, ignoring any traffic split settings, if any. On GetFunction, true will be returned if the latest revision is serving 100% of traffic.
  *   `availableCpu` (*type:* `String.t`, *default:* `nil`) - The number of CPUs used in a single container instance. Default value is calculated from available memory. Supports the same values as Cloud Run, see https://cloud.google.com/run/docs/reference/rest/v1/Container#resourcerequirements Example: "1" indicates 1 vCPU
  *   `availableMemory` (*type:* `String.t`, *default:* `nil`) - The amount of memory available for a function. Defaults to 256M. Supported units are k, M, G, Mi, Gi. If no unit is supplied the value is interpreted as bytes. See https://github.com/kubernetes/kubernetes/blob/master/staging/src/k8s.io/apimachinery/pkg/api/resource/quantity.go a full description.
  *   `binaryAuthorizationPolicy` (*type:* `String.t`, *default:* `nil`) - Optional. The binary authorization policy to be checked when deploying the Cloud Run service.
  *   `environmentVariables` (*type:* `map()`, *default:* `nil`) - Environment variables that shall be available during function execution.
  *   `ingressSettings` (*type:* `String.t`, *default:* `nil`) - The ingress settings for the function, controlling what traffic can reach it.
  *   `maxInstanceCount` (*type:* `integer()`, *default:* `nil`) - The limit on the maximum number of function instances that may coexist at a given time. In some cases, such as rapid traffic surges, Cloud Functions may, for a short period of time, create more instances than the specified max instances limit. If your function cannot tolerate this temporary behavior, you may want to factor in a safety margin and set a lower max instances value than your function can tolerate. See the [Max Instances](https://cloud.google.com/functions/docs/max-instances) Guide for more details.
  *   `maxInstanceRequestConcurrency` (*type:* `integer()`, *default:* `nil`) - Sets the maximum number of concurrent requests that each instance can receive. Defaults to 1.
  *   `minInstanceCount` (*type:* `integer()`, *default:* `nil`) - The limit on the minimum number of function instances that may coexist at a given time. Function instances are kept in idle state for a short period after they finished executing the request to reduce cold start time for subsequent requests. Setting a minimum instance count will ensure that the given number of instances are kept running in idle state always. This can help with cold start times when jump in incoming request count occurs after the idle instance would have been stopped in the default case.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - Output only. The name of service revision.
  *   `secretEnvironmentVariables` (*type:* `list(GoogleApi.CloudFunctions.V2.Model.SecretEnvVar.t)`, *default:* `nil`) - Secret environment variables configuration.
  *   `secretVolumes` (*type:* `list(GoogleApi.CloudFunctions.V2.Model.SecretVolume.t)`, *default:* `nil`) - Secret volumes configuration.
  *   `securityLevel` (*type:* `String.t`, *default:* `nil`) - Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the service associated with a Function. The format of this field is `projects/{project}/locations/{region}/services/{service}`
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - The email of the service's service account. If empty, defaults to `{project_number}-compute@developer.gserviceaccount.com`.
  *   `timeoutSeconds` (*type:* `integer()`, *default:* `nil`) - The function execution timeout. Execution is considered failed and can be terminated if the function is not completed at the end of the timeout period. Defaults to 60 seconds.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - Output only. URI of the Service deployed.
  *   `vpcConnector` (*type:* `String.t`, *default:* `nil`) - The Serverless VPC Access connector that this cloud function can connect to. The format of this field is `projects/*/locations/*/connectors/*`.
  *   `vpcConnectorEgressSettings` (*type:* `String.t`, *default:* `nil`) - The egress settings for the connector, controlling what traffic is diverted through it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allTrafficOnLatestRevision => boolean() | nil,
          :availableCpu => String.t() | nil,
          :availableMemory => String.t() | nil,
          :binaryAuthorizationPolicy => String.t() | nil,
          :environmentVariables => map() | nil,
          :ingressSettings => String.t() | nil,
          :maxInstanceCount => integer() | nil,
          :maxInstanceRequestConcurrency => integer() | nil,
          :minInstanceCount => integer() | nil,
          :revision => String.t() | nil,
          :secretEnvironmentVariables =>
            list(GoogleApi.CloudFunctions.V2.Model.SecretEnvVar.t()) | nil,
          :secretVolumes => list(GoogleApi.CloudFunctions.V2.Model.SecretVolume.t()) | nil,
          :securityLevel => String.t() | nil,
          :service => String.t() | nil,
          :serviceAccountEmail => String.t() | nil,
          :timeoutSeconds => integer() | nil,
          :uri => String.t() | nil,
          :vpcConnector => String.t() | nil,
          :vpcConnectorEgressSettings => String.t() | nil
        }

  field(:allTrafficOnLatestRevision)
  field(:availableCpu)
  field(:availableMemory)
  field(:binaryAuthorizationPolicy)
  field(:environmentVariables, type: :map)
  field(:ingressSettings)
  field(:maxInstanceCount)
  field(:maxInstanceRequestConcurrency)
  field(:minInstanceCount)
  field(:revision)

  field(:secretEnvironmentVariables,
    as: GoogleApi.CloudFunctions.V2.Model.SecretEnvVar,
    type: :list
  )

  field(:secretVolumes, as: GoogleApi.CloudFunctions.V2.Model.SecretVolume, type: :list)
  field(:securityLevel)
  field(:service)
  field(:serviceAccountEmail)
  field(:timeoutSeconds)
  field(:uri)
  field(:vpcConnector)
  field(:vpcConnectorEgressSettings)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V2.Model.ServiceConfig do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V2.Model.ServiceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V2.Model.ServiceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
