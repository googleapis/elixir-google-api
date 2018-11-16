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

defmodule GoogleApi.DFAReporting.V28.Model.CompatibleFields do
  @moduledoc """
  Represents a response to the queryCompatibleFields method.

  ## Attributes

  - crossDimensionReachReportCompatibleFields (CrossDimensionReachReportCompatibleFields): Contains items that are compatible to be selected for a report of type \&quot;CROSS_DIMENSION_REACH\&quot;. Defaults to: `null`.
  - floodlightReportCompatibleFields (FloodlightReportCompatibleFields): Contains items that are compatible to be selected for a report of type \&quot;FLOODLIGHT\&quot;. Defaults to: `null`.
  - kind (String.t): The kind of resource this is, in this case dfareporting#compatibleFields. Defaults to: `null`.
  - pathToConversionReportCompatibleFields (PathToConversionReportCompatibleFields): Contains items that are compatible to be selected for a report of type \&quot;PATH_TO_CONVERSION\&quot;. Defaults to: `null`.
  - reachReportCompatibleFields (ReachReportCompatibleFields): Contains items that are compatible to be selected for a report of type \&quot;REACH\&quot;. Defaults to: `null`.
  - reportCompatibleFields (ReportCompatibleFields): Contains items that are compatible to be selected for a report of type \&quot;STANDARD\&quot;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :crossDimensionReachReportCompatibleFields =>
            GoogleApi.DFAReporting.V28.Model.CrossDimensionReachReportCompatibleFields.t(),
          :floodlightReportCompatibleFields =>
            GoogleApi.DFAReporting.V28.Model.FloodlightReportCompatibleFields.t(),
          :kind => any(),
          :pathToConversionReportCompatibleFields =>
            GoogleApi.DFAReporting.V28.Model.PathToConversionReportCompatibleFields.t(),
          :reachReportCompatibleFields =>
            GoogleApi.DFAReporting.V28.Model.ReachReportCompatibleFields.t(),
          :reportCompatibleFields => GoogleApi.DFAReporting.V28.Model.ReportCompatibleFields.t()
        }

  field(:crossDimensionReachReportCompatibleFields,
    as: GoogleApi.DFAReporting.V28.Model.CrossDimensionReachReportCompatibleFields
  )

  field(:floodlightReportCompatibleFields,
    as: GoogleApi.DFAReporting.V28.Model.FloodlightReportCompatibleFields
  )

  field(:kind)

  field(:pathToConversionReportCompatibleFields,
    as: GoogleApi.DFAReporting.V28.Model.PathToConversionReportCompatibleFields
  )

  field(:reachReportCompatibleFields,
    as: GoogleApi.DFAReporting.V28.Model.ReachReportCompatibleFields
  )

  field(:reportCompatibleFields, as: GoogleApi.DFAReporting.V28.Model.ReportCompatibleFields)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.CompatibleFields do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.CompatibleFields.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.CompatibleFields do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
