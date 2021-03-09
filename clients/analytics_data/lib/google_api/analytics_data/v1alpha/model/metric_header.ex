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

defmodule GoogleApi.AnalyticsData.V1alpha.Model.MetricHeader do
  @moduledoc """
  Describes a metric column in the report. Visible metrics requested in a report produce column entries within rows and MetricHeaders. However, metrics used exclusively within filters or expressions do not produce columns in a report; correspondingly, those metrics do not produce headers.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The metric's name.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The metric's data type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :type => String.t() | nil
        }

  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1alpha.Model.MetricHeader do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1alpha.Model.MetricHeader.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1alpha.Model.MetricHeader do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
