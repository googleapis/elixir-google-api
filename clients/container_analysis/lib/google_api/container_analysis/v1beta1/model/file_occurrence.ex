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

defmodule GoogleApi.ContainerAnalysis.V1beta1.Model.FileOccurrence do
  @moduledoc """
  FileOccurrence represents an SPDX File Information section: https://spdx.github.io/spdx-spec/4-file-information/

  ## Attributes

  *   `attributions` (*type:* `list(String.t)`, *default:* `nil`) - This field provides a place for the SPDX data creator to record, at the file level, acknowledgements that may be needed to be communicated in some contexts
  *   `comment` (*type:* `String.t`, *default:* `nil`) - This field provides a place for the SPDX file creator to record any general comments about the file
  *   `contributors` (*type:* `list(String.t)`, *default:* `nil`) - This field provides a place for the SPDX file creator to record file contributors
  *   `copyright` (*type:* `String.t`, *default:* `nil`) - Identify the copyright holder of the file, as well as any dates present
  *   `filesLicenseInfo` (*type:* `list(String.t)`, *default:* `nil`) - This field contains the license information actually found in the file, if any
  *   `id` (*type:* `String.t`, *default:* `nil`) - Uniquely identify any element in an SPDX document which may be referenced by other elements
  *   `licenseConcluded` (*type:* `GoogleApi.ContainerAnalysis.V1beta1.Model.License.t`, *default:* `nil`) - This field contains the license the SPDX file creator has concluded as governing the file or alternative values if the governing license cannot be determined
  *   `notice` (*type:* `String.t`, *default:* `nil`) - This field provides a place for the SPDX file creator to record license notices or other such related notices found in the file
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributions => list(String.t()) | nil,
          :comment => String.t() | nil,
          :contributors => list(String.t()) | nil,
          :copyright => String.t() | nil,
          :filesLicenseInfo => list(String.t()) | nil,
          :id => String.t() | nil,
          :licenseConcluded => GoogleApi.ContainerAnalysis.V1beta1.Model.License.t() | nil,
          :notice => String.t() | nil
        }

  field(:attributions, type: :list)
  field(:comment)
  field(:contributors, type: :list)
  field(:copyright)
  field(:filesLicenseInfo, type: :list)
  field(:id)
  field(:licenseConcluded, as: GoogleApi.ContainerAnalysis.V1beta1.Model.License)
  field(:notice)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.FileOccurrence do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1beta1.Model.FileOccurrence.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1beta1.Model.FileOccurrence do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
