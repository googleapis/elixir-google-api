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

defmodule GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcherMetadataLabels do
  @moduledoc """
  Defines a name-pair value for a single label.

  ## Attributes

  *   `labelName` (*type:* `String.t`, *default:* `nil`) - Required. Label name presented as key in xDS Node Metadata.
  *   `labelValue` (*type:* `String.t`, *default:* `nil`) - Required. Label value presented as value corresponding to the above key, in xDS Node Metadata.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelName => String.t() | nil,
          :labelValue => String.t() | nil
        }

  field(:labelName)
  field(:labelValue)
end

defimpl Poison.Decoder,
  for: GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcherMetadataLabels do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcherMetadataLabels.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.NetworkServices.V1.Model.EndpointMatcherMetadataLabelMatcherMetadataLabels do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
