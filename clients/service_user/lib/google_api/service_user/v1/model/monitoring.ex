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

defmodule GoogleApi.ServiceUser.V1.Model.Monitoring do
  @moduledoc """
  Monitoring configuration of the service.  The example below shows how to configure monitored resources and metrics for monitoring. In the example, a monitored resource and two metrics are defined. The &#x60;library.googleapis.com/book/returned_count&#x60; metric is sent to both producer and consumer projects, whereas the &#x60;library.googleapis.com/book/overdue_count&#x60; metric is only sent to the consumer project.      monitored_resources:     - type: library.googleapis.com/branch       labels:       - key: /city         description: The city where the library branch is located in.       - key: /name         description: The name of the branch.     metrics:     - name: library.googleapis.com/book/returned_count       metric_kind: DELTA       value_type: INT64       labels:       - key: /customer_id     - name: library.googleapis.com/book/overdue_count       metric_kind: GAUGE       value_type: INT64       labels:       - key: /customer_id     monitoring:       producer_destinations:       - monitored_resource: library.googleapis.com/branch         metrics:         - library.googleapis.com/book/returned_count       consumer_destinations:       - monitored_resource: library.googleapis.com/branch         metrics:         - library.googleapis.com/book/returned_count         - library.googleapis.com/book/overdue_count

  ## Attributes

  - consumerDestinations ([MonitoringDestination]): Monitoring configurations for sending metrics to the consumer project. There can be multiple consumer destinations, each one must have a different monitored resource type. A metric can be used in at most one consumer destination. Defaults to: `null`.
  - producerDestinations ([MonitoringDestination]): Monitoring configurations for sending metrics to the producer project. There can be multiple producer destinations, each one must have a different monitored resource type. A metric can be used in at most one producer destination. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerDestinations => list(GoogleApi.ServiceUser.V1.Model.MonitoringDestination.t()),
          :producerDestinations => list(GoogleApi.ServiceUser.V1.Model.MonitoringDestination.t())
        }

  field(:consumerDestinations,
    as: GoogleApi.ServiceUser.V1.Model.MonitoringDestination,
    type: :list
  )

  field(:producerDestinations,
    as: GoogleApi.ServiceUser.V1.Model.MonitoringDestination,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUser.V1.Model.Monitoring do
  def decode(value, options) do
    GoogleApi.ServiceUser.V1.Model.Monitoring.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUser.V1.Model.Monitoring do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
