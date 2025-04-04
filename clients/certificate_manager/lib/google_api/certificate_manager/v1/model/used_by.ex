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

defmodule GoogleApi.CertificateManager.V1.Model.UsedBy do
  @moduledoc """
  Defines a resource that uses the certificate.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Full name of the resource https://google.aip.dev/122#full-resource-names, e.g. `//certificatemanager.googleapis.com/projects/*/locations/*/certificateMaps/*/certificateMapEntries/*` or `//compute.googleapis.com/projects/*/locations/*/targetHttpsProxies/*`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil
        }

  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.CertificateManager.V1.Model.UsedBy do
  def decode(value, options) do
    GoogleApi.CertificateManager.V1.Model.UsedBy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CertificateManager.V1.Model.UsedBy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
