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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Export do
  @moduledoc """
  If set, the detailed data profiles will be persisted to the location of your choice whenever updated.

  ## Attributes

  *   `profileTable` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t`, *default:* `nil`) - Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :profileTable => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t() | nil
        }

  field(:profileTable, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Export do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Export.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Export do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
