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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAbout do
  @moduledoc """


  ## Attributes

  *   `contentType` (*type:* `String.t`, *default:* `nil`) - 
  *   `metadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t`, *default:* `nil`) - 
  *   `safeHtmlValue` (*type:* `GoogleApi.ContentWarehouse.V1.Model.WebutilHtmlTypesSafeHtmlProto.t`, *default:* `nil`) - Sanitized HTML value that is only populated when the SANITIZE_ABOUT_HTML extension is requested.
  *   `value` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentType => String.t() | nil,
          :metadata =>
            GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata.t()
            | nil,
          :safeHtmlValue =>
            GoogleApi.ContentWarehouse.V1.Model.WebutilHtmlTypesSafeHtmlProto.t() | nil,
          :value => String.t() | nil
        }

  field(:contentType)

  field(:metadata,
    as: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiPersonFieldMetadata
  )

  field(:safeHtmlValue, as: GoogleApi.ContentWarehouse.V1.Model.WebutilHtmlTypesSafeHtmlProto)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAbout do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAbout.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiAbout do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
