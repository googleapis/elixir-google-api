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

defmodule GoogleApi.Run.V1.Model.ServiceSpec do
  @moduledoc """
  ServiceSpec holds the desired state of the Route (from the client), which is used to manipulate the underlying Route and Configuration(s).

  ## Attributes

  *   `template` (*type:* `GoogleApi.Run.V1.Model.RevisionTemplate.t`, *default:* `nil`) - Template holds the latest specification for the Revision to be stamped out.
  *   `traffic` (*type:* `list(GoogleApi.Run.V1.Model.TrafficTarget.t)`, *default:* `nil`) - Traffic specifies how to distribute traffic over a collection of Knative Revisions and Configurations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :template => GoogleApi.Run.V1.Model.RevisionTemplate.t(),
          :traffic => list(GoogleApi.Run.V1.Model.TrafficTarget.t())
        }

  field(:template, as: GoogleApi.Run.V1.Model.RevisionTemplate)
  field(:traffic, as: GoogleApi.Run.V1.Model.TrafficTarget, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.ServiceSpec do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.ServiceSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.ServiceSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
