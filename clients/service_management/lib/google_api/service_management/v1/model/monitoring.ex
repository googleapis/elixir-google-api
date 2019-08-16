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

defmodule GoogleApi.ServiceManagement.V1.Model.Monitoring do
  @moduledoc """
  Monitoring configuration of the service.

  The example below shows how to configure monitored resources and metrics
  for monitoring. In the example, a monitored resource and two metrics are
  defined. The `library.googleapis.com/book/returned_count` metric is sent
  to both producer and consumer projects, whereas the
  `library.googleapis.com/book/overdue_count` metric is only sent to the
  consumer project.

      monitored_resources:
      - type: library.googleapis.com/branch
        labels:
        - key: /city
          description: The city where the library branch is located in.
        - key: /name
          description: The name of the branch.
      metrics:
      - name: library.googleapis.com/book/returned_count
        metric_kind: DELTA
        value_type: INT64
        labels:
        - key: /customer_id
      - name: library.googleapis.com/book/overdue_count
        metric_kind: GAUGE
        value_type: INT64
        labels:
        - key: /customer_id
      monitoring:
        producer_destinations:
        - monitored_resource: library.googleapis.com/branch
          metrics:
          - library.googleapis.com/book/returned_count
        consumer_destinations:
        - monitored_resource: library.googleapis.com/branch
          metrics:
          - library.googleapis.com/book/returned_count
          - library.googleapis.com/book/overdue_count

  ## Attributes

  *   `consumerDestinations` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.MonitoringDestination.t)`, *default:* `nil`) - Monitoring configurations for sending metrics to the consumer project.
      There can be multiple consumer destinations. A monitored resouce type may
      appear in multiple monitoring destinations if different aggregations are
      needed for different sets of metrics associated with that monitored
      resource type. A monitored resource and metric pair may only be used once
      in the Monitoring configuration.
  *   `producerDestinations` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.MonitoringDestination.t)`, *default:* `nil`) - Monitoring configurations for sending metrics to the producer project.
      There can be multiple producer destinations. A monitored resouce type may
      appear in multiple monitoring destinations if different aggregations are
      needed for different sets of metrics associated with that monitored
      resource type. A monitored resource and metric pair may only be used once
      in the Monitoring configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerDestinations =>
            list(GoogleApi.ServiceManagement.V1.Model.MonitoringDestination.t()),
          :producerDestinations =>
            list(GoogleApi.ServiceManagement.V1.Model.MonitoringDestination.t())
        }

  field(
    :consumerDestinations,
    as: GoogleApi.ServiceManagement.V1.Model.MonitoringDestination,
    type: :list
  )

  field(
    :producerDestinations,
    as: GoogleApi.ServiceManagement.V1.Model.MonitoringDestination,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Monitoring do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Monitoring.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Monitoring do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
