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

defmodule GoogleApi.CloudControlsPartner.V1.Model.ListViolationsResponse do
  @moduledoc """
  Response message for list customer violation requests

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Workloads that could not be reached due to permission errors or any other error. Ref: https://google.aip.dev/217
  *   `violations` (*type:* `list(GoogleApi.CloudControlsPartner.V1.Model.Violation.t)`, *default:* `nil`) - List of violation
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil,
          :violations => list(GoogleApi.CloudControlsPartner.V1.Model.Violation.t()) | nil
        }

  field(:nextPageToken)
  field(:unreachable, type: :list)
  field(:violations, as: GoogleApi.CloudControlsPartner.V1.Model.Violation, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudControlsPartner.V1.Model.ListViolationsResponse do
  def decode(value, options) do
    GoogleApi.CloudControlsPartner.V1.Model.ListViolationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudControlsPartner.V1.Model.ListViolationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
