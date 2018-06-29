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

defmodule GoogleApi.CloudResourceManager.V1.Model.ResourceId do
  @moduledoc """
  A container to reference an id for any resource type. A &#x60;resource&#x60; in Google Cloud Platform is a generic term for something you (a developer) may want to interact with through one of our API&#39;s. Some examples are an App Engine app, a Compute Engine instance, a Cloud SQL database, and so on.

  ## Attributes

  - id (String.t): Required field for the type-specific id. This should correspond to the id used in the type-specific API&#39;s. Defaults to: `null`.
  - type (String.t): Required field representing the resource type this id is for. At present, the valid types are: \&quot;organization\&quot; Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :type => any()
        }

  field(:id)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.ResourceId do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.ResourceId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.ResourceId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
