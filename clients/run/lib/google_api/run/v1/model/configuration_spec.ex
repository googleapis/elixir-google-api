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

defmodule GoogleApi.Run.V1.Model.ConfigurationSpec do
  @moduledoc """
  ConfigurationSpec holds the desired state of the Configuration (from the
  client).

  ## Attributes

  *   `template` (*type:* `GoogleApi.Run.V1.Model.RevisionTemplate.t`, *default:* `nil`) - Optional metadata for this Revision, including labels and annotations. Name
      will be generated by the Configuration.
      To set minimum instances for this revision, use the
      "autoscaling.knative.dev/minScale" annotation key. (Cloud Run for Anthos
      only). To set maximum instances for this revision, use the
      "autoscaling.knative.dev/maxScale" annotation key.
      To set Cloud SQL connections for the revision, use the
      "run.googleapis.com/cloudsql-instances" annotation key. Values should be
      comma separated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :template => GoogleApi.Run.V1.Model.RevisionTemplate.t()
        }

  field(:template, as: GoogleApi.Run.V1.Model.RevisionTemplate)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.ConfigurationSpec do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.ConfigurationSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.ConfigurationSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
