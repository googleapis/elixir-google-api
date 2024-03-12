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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Model.Publisher do
  @moduledoc """
  Publisher contains information about the publisher of this Note.

  ## Attributes

  *   `issuingAuthority` (*type:* `String.t`, *default:* `nil`) - Provides information about the authority of the issuing party to release the document, in particular, the party's constituency and responsibilities or other obligations.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the publisher. Examples: 'Google', 'Google Cloud Platform'.
  *   `publisherNamespace` (*type:* `String.t`, *default:* `nil`) - The context or namespace. Contains a URL which is under control of the issuing party and can be used as a globally unique identifier for that issuing party. Example: https://csaf.io
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :issuingAuthority => String.t() | nil,
          :name => String.t() | nil,
          :publisherNamespace => String.t() | nil
        }

  field(:issuingAuthority)
  field(:name)
  field(:publisherNamespace)
end

defimpl Poison.Decoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Publisher do
  def decode(value, options) do
    GoogleApi.ContainerAnalysis.V1alpha1.Model.Publisher.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContainerAnalysis.V1alpha1.Model.Publisher do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
