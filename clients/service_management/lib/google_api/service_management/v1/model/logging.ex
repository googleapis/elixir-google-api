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

defmodule GoogleApi.ServiceManagement.V1.Model.Logging do
  @moduledoc """
  Logging configuration of the service.  The following example shows how to configure logs to be sent to the producer and consumer projects. In the example, the &#x60;activity_history&#x60; log is sent to both the producer and consumer projects, whereas the &#x60;purchase_history&#x60; log is only sent to the producer project.      monitored_resources:     - type: library.googleapis.com/branch       labels:       - key: /city         description: The city where the library branch is located in.       - key: /name         description: The name of the branch.     logs:     - name: activity_history       labels:       - key: /customer_id     - name: purchase_history     logging:       producer_destinations:       - monitored_resource: library.googleapis.com/branch         logs:         - activity_history         - purchase_history       consumer_destinations:       - monitored_resource: library.googleapis.com/branch         logs:         - activity_history

  ## Attributes

  - consumerDestinations ([LoggingDestination]): Logging configurations for sending logs to the consumer project. There can be multiple consumer destinations, each one must have a different monitored resource type. A log can be used in at most one consumer destination. Defaults to: `null`.
  - producerDestinations ([LoggingDestination]): Logging configurations for sending logs to the producer project. There can be multiple producer destinations, each one must have a different monitored resource type. A log can be used in at most one producer destination. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerDestinations =>
            list(GoogleApi.ServiceManagement.V1.Model.LoggingDestination.t()),
          :producerDestinations =>
            list(GoogleApi.ServiceManagement.V1.Model.LoggingDestination.t())
        }

  field(
    :consumerDestinations,
    as: GoogleApi.ServiceManagement.V1.Model.LoggingDestination,
    type: :list
  )

  field(
    :producerDestinations,
    as: GoogleApi.ServiceManagement.V1.Model.LoggingDestination,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Logging do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Logging.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Logging do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
