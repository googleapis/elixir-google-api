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

defmodule GoogleApi.Admin.Reports_v1.Model.UsageReport do
  @moduledoc """
  JSON template for a usage report.

  ## Attributes

  *   `date` (*type:* `String.t`, *default:* `nil`) - Output only. The date of the report request.
  *   `entity` (*type:* `GoogleApi.Admin.Reports_v1.Model.UsageReportEntity.t`, *default:* `nil`) - Output only. Information about the type of the item.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#reports#usageReport`) - The type of API resource. For a usage report, the value is `admin#reports#usageReport`.
  *   `parameters` (*type:* `list(GoogleApi.Admin.Reports_v1.Model.UsageReportParameters.t)`, *default:* `nil`) - Output only. Parameter value pairs for various applications. For the Entity Usage Report parameters and values, see [the Entity Usage parameters reference](/admin-sdk/reports/v1/reference/usage-ref-appendix-a/entities).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :date => String.t(),
          :entity => GoogleApi.Admin.Reports_v1.Model.UsageReportEntity.t(),
          :etag => String.t(),
          :kind => String.t(),
          :parameters => list(GoogleApi.Admin.Reports_v1.Model.UsageReportParameters.t())
        }

  field(:date)
  field(:entity, as: GoogleApi.Admin.Reports_v1.Model.UsageReportEntity)
  field(:etag)
  field(:kind)
  field(:parameters, as: GoogleApi.Admin.Reports_v1.Model.UsageReportParameters, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReport do
  def decode(value, options) do
    GoogleApi.Admin.Reports_v1.Model.UsageReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Reports_v1.Model.UsageReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
