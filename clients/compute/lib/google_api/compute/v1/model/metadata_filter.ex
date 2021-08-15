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

defmodule GoogleApi.Compute.V1.Model.MetadataFilter do
  @moduledoc """
  Opaque filter criteria used by loadbalancers to restrict routing configuration to a limited set of loadbalancing proxies. Proxies and sidecars involved in loadbalancing would typically present metadata to the loadbalancers which need to match criteria specified here. If a match takes place, the relevant configuration is made available to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. An example for using metadataFilters would be: if loadbalancing involves Envoys, they will only receive routing configuration when values in metadataFilters match values supplied in of their XDS requests to loadbalancers.

  ## Attributes

  *   `filterLabels` (*type:* `list(GoogleApi.Compute.V1.Model.MetadataFilterLabelMatch.t)`, *default:* `nil`) - The list of label value pairs that must match labels in the provided metadata based on filterMatchCriteria This list must not be empty and can have at the most 64 entries.
  *   `filterMatchCriteria` (*type:* `String.t`, *default:* `nil`) - Specifies how individual filterLabel matches within the list of filterLabels contribute towards the overall metadataFilter match. Supported values are: - MATCH_ANY: At least one of the filterLabels must have a matching label in the provided metadata. - MATCH_ALL: All filterLabels must have matching labels in the provided metadata. 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filterLabels => list(GoogleApi.Compute.V1.Model.MetadataFilterLabelMatch.t()) | nil,
          :filterMatchCriteria => String.t() | nil
        }

  field(:filterLabels, as: GoogleApi.Compute.V1.Model.MetadataFilterLabelMatch, type: :list)
  field(:filterMatchCriteria)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.MetadataFilter do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.MetadataFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.MetadataFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
