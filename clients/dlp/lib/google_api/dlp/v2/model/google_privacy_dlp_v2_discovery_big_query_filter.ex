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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryBigQueryFilter do
  @moduledoc """
  Determines what tables will have profiles generated within an organization or project. Includes the ability to filter by regular expression patterns on project ID, dataset ID, and table ID.

  ## Attributes

  *   `otherTables` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2AllOtherBigQueryTables.t`, *default:* `nil`) - Catch-all. This should always be the last filter in the list because anything above it will apply first. Should only appear once in a configuration. If none is specified, a default one will be added automatically.
  *   `tables` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTableCollection.t`, *default:* `nil`) - A specific set of tables for this filter to apply to. A table collection must be specified in only one filter per config. If a table id or dataset is empty, Cloud DLP assumes all tables in that collection must be profiled. Must specify a project ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :otherTables =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2AllOtherBigQueryTables.t() | nil,
          :tables => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTableCollection.t() | nil
        }

  field(:otherTables, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2AllOtherBigQueryTables)
  field(:tables, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTableCollection)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryBigQueryFilter do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryBigQueryFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryBigQueryFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end