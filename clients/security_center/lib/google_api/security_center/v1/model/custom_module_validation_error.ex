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

defmodule GoogleApi.SecurityCenter.V1.Model.CustomModuleValidationError do
  @moduledoc """
  An error encountered while validating the uploaded configuration of an Event Threat Detection Custom Module.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of the error, suitable for human consumption. Required.
  *   `end` (*type:* `GoogleApi.SecurityCenter.V1.Model.Position.t`, *default:* `nil`) - The end position of the error in the uploaded text version of the module. This field may be omitted if no specific position applies, or if one could not be computed..
  *   `fieldPath` (*type:* `String.t`, *default:* `nil`) - The path, in RFC 8901 JSON Pointer format, to the field that failed validation. This may be left empty if no specific field is affected.
  *   `start` (*type:* `GoogleApi.SecurityCenter.V1.Model.Position.t`, *default:* `nil`) - The initial position of the error in the uploaded text version of the module. This field may be omitted if no specific position applies, or if one could not be computed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :end => GoogleApi.SecurityCenter.V1.Model.Position.t() | nil,
          :fieldPath => String.t() | nil,
          :start => GoogleApi.SecurityCenter.V1.Model.Position.t() | nil
        }

  field(:description)
  field(:end, as: GoogleApi.SecurityCenter.V1.Model.Position)
  field(:fieldPath)
  field(:start, as: GoogleApi.SecurityCenter.V1.Model.Position)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.CustomModuleValidationError do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.CustomModuleValidationError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.CustomModuleValidationError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
