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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfile do
  @moduledoc """
  Profile information describing the structure and layout of the data and contains the profile info.

  ## Attributes

  *   `fields` (*type:* `list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileField.t)`, *default:* `nil`) - The sequence of fields describing data in table entities.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields =>
            list(
              GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileField.t()
            )
            | nil
        }

  field(:fields,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileField,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfile do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfile.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end