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

defmodule GoogleApi.Firebase.V1beta1.Model.FirebaseProject do
  @moduledoc """
  A `FirebaseProject` is the top-level Firebase entity. It is the container for
  Firebase Apps, Firebase Hosting sites, storage systems (Firebase Realtime
  Database, Cloud Firestore, Cloud Storage buckets), and other Firebase and
  Google Cloud Platform (GCP) resources.

  You create a `FirebaseProject` by calling
  AddFirebase
  and specifying an *existing*
  [GCP
  `Project`](https://cloud.google.com/resource-manager/reference/rest/v1/projects).
  This adds Firebase resources to the existing GCP `Project`.

  Since a FirebaseProject is actually also a GCP `Project`, a
  `FirebaseProject` has the same underlying GCP identifiers (`projectNumber`
  and `projectId`). This allows for easy interop with Google APIs.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user-assigned display name of the Project.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the Project, in the format:
      <code>projects/<var>PROJECT_IDENTIFIER</var></code>
      <var>PROJECT_IDENTIFIER</var>: the Project's
      [`ProjectNumber`](../projects#FirebaseProject.FIELDS.project_number)
      ***(recommended)***
      or its [`ProjectId`](../projects#FirebaseProject.FIELDS.project_id).
      <br>Learn more about using project identifiers in
      Google's [AIP 2510 standard](https://google.aip.dev/cloud/2510).
      <br>Note that the value for <var>PROJECT_IDENTIFIER</var> in any
      response body will be the `ProjectId`.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Immutable. A user-assigned unique identifier for the Project.

      This identifier may appear in URLs or names for some Firebase resources
      associated with the Project, but it should generally be treated as a
      convenience alias to reference the Project.
  *   `projectNumber` (*type:* `String.t`, *default:* `nil`) - Immutable. The globally unique, Google-assigned canonical identifier for
      the Project.
      Use this identifier when configuring integrations and/or
      making API calls to Firebase or third-party services.
  *   `resources` (*type:* `GoogleApi.Firebase.V1beta1.Model.DefaultResources.t`, *default:* `nil`) - The default Firebase resources associated with the Project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :name => String.t(),
          :projectId => String.t(),
          :projectNumber => String.t(),
          :resources => GoogleApi.Firebase.V1beta1.Model.DefaultResources.t()
        }

  field(:displayName)
  field(:name)
  field(:projectId)
  field(:projectNumber)
  field(:resources, as: GoogleApi.Firebase.V1beta1.Model.DefaultResources)
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.FirebaseProject do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.FirebaseProject.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.FirebaseProject do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
