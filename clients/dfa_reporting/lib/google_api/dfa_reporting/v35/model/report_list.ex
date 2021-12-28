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

defmodule GoogleApi.DFAReporting.V35.Model.ReportList do
  @moduledoc """
  Represents the list of reports.

  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - The eTag of this response for caching purposes.
  *   `items` (*type:* `list(GoogleApi.DFAReporting.V35.Model.Report.t)`, *default:* `nil`) - The reports returned in this response.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of list this is, in this case dfareporting#reportList.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token used to page through reports. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t() | nil,
          :items => list(GoogleApi.DFAReporting.V35.Model.Report.t()) | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil
        }

  field(:etag)
  field(:items, as: GoogleApi.DFAReporting.V35.Model.Report, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.ReportList do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.ReportList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.ReportList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
