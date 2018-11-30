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

defmodule GoogleApi.PubSub.V1.Model.ListTopicSnapshotsResponse do
  @moduledoc """
  Response for the &#x60;ListTopicSnapshots&#x60; method.&lt;br&gt;&lt;br&gt; &lt;b&gt;BETA:&lt;/b&gt; This feature is part of a beta release. This API might be changed in backward-incompatible ways and is not recommended for production use. It is not subject to any SLA or deprecation policy.

  ## Attributes

  - nextPageToken (String.t): If not empty, indicates that there may be more snapshots that match the request; this value should be passed in a new &#x60;ListTopicSnapshotsRequest&#x60; to get more snapshots. Defaults to: `null`.
  - snapshots ([String.t]): The names of the snapshots that match the request. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => any(),
          :snapshots => list(any())
        }

  field(:nextPageToken)
  field(:snapshots, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.ListTopicSnapshotsResponse do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.ListTopicSnapshotsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.ListTopicSnapshotsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
