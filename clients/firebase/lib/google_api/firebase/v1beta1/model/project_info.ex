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

defmodule GoogleApi.Firebase.V1beta1.Model.ProjectInfo do
  @moduledoc """
  A reference to a Google Cloud Platform (GCP) `Project`.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-assigned display name of the GCP `Project`, for example:
      <code>My App</code>
  *   `locationId` (*type:* `String.t`, *default:* `nil`) - The ID of the project's default GCP resource location. The location is one
      of the available
      [GCP resource
      locations](https://firebase.google.com/docs/projects/locations). <br> <br>
      Not all projects will have this field populated. If it is not populated, it
      means that the project does not yet have a default GCP resource location.
      To set your project's default GCP resource location, call
      [`FinalizeDefaultLocation`](../projects.defaultLocation/finalize) after you
      add Firebase resources to your project.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The resource name of the GCP `Project` to which Firebase resources can be
      added, in the format:
      <br><code>projects/<var>PROJECT_NUMBER</var></code>
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :locationId => String.t(),
          :project => String.t()
        }

  field(:displayName)
  field(:locationId)
  field(:project)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.ProjectInfo do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.ProjectInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.ProjectInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
