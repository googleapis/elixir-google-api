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

defmodule GoogleApi.CloudRun.V1alpha1.Model.Revision do
  @moduledoc """
  Revision is an immutable snapshot of code and configuration.  A revision references a container image. Revisions are created by updates to a Configuration.  Cloud Run does not currently support referencing a build that is responsible for materializing the container image from source.  See also: https://github.com/knative/serving/blob/master/docs/spec/overview.md#revision

  ## Attributes

  - apiVersion (String.t): The API version for this call such as \&quot;v1alpha1\&quot;. Defaults to: `null`.
  - kind (String.t): The kind of this resource, in this case \&quot;Revision\&quot;. Defaults to: `null`.
  - metadata (ObjectMeta): Metadata associated with this Revision, including name, namespace, labels, and annotations. Defaults to: `null`.
  - spec (RevisionSpec): Spec holds the desired state of the Revision (from the client). Defaults to: `null`.
  - status (RevisionStatus): Status communicates the observed state of the Revision (from the controller). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => any(),
          :kind => any(),
          :metadata => GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta.t(),
          :spec => GoogleApi.CloudRun.V1alpha1.Model.RevisionSpec.t(),
          :status => GoogleApi.CloudRun.V1alpha1.Model.RevisionStatus.t()
        }

  field(:apiVersion)
  field(:kind)
  field(:metadata, as: GoogleApi.CloudRun.V1alpha1.Model.ObjectMeta)
  field(:spec, as: GoogleApi.CloudRun.V1alpha1.Model.RevisionSpec)
  field(:status, as: GoogleApi.CloudRun.V1alpha1.Model.RevisionStatus)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.Revision do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.Revision.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.Revision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
