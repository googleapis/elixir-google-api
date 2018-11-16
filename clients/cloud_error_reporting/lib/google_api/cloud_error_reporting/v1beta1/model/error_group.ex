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

defmodule GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup do
  @moduledoc """
  Description of a group of similar error events.

  ## Attributes

  - groupId (String.t): Group IDs are unique for a given project. If the same kind of error occurs in different service contexts, it will receive the same group ID. Defaults to: `null`.
  - name (String.t): The group resource name. Example: &lt;code&gt;projects/my-project-123/groups/my-groupid&lt;/code&gt; Defaults to: `null`.
  - trackingIssues ([TrackingIssue]): Associated tracking issues. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :groupId => any(),
          :name => any(),
          :trackingIssues => list(GoogleApi.CloudErrorReporting.V1beta1.Model.TrackingIssue.t())
        }

  field(:groupId)
  field(:name)

  field(:trackingIssues,
    as: GoogleApi.CloudErrorReporting.V1beta1.Model.TrackingIssue,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup do
  def decode(value, options) do
    GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudErrorReporting.V1beta1.Model.ErrorGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
