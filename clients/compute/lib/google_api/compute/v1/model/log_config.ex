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

defmodule GoogleApi.Compute.V1.Model.LogConfig do
  @moduledoc """
  This is deprecated and has no effect. Do not use.

  ## Attributes

  *   `cloudAudit` (*type:* `GoogleApi.Compute.V1.Model.LogConfigCloudAuditOptions.t`, *default:* `nil`) - This is deprecated and has no effect. Do not use.
  *   `counter` (*type:* `GoogleApi.Compute.V1.Model.LogConfigCounterOptions.t`, *default:* `nil`) - This is deprecated and has no effect. Do not use.
  *   `dataAccess` (*type:* `GoogleApi.Compute.V1.Model.LogConfigDataAccessOptions.t`, *default:* `nil`) - This is deprecated and has no effect. Do not use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudAudit => GoogleApi.Compute.V1.Model.LogConfigCloudAuditOptions.t() | nil,
          :counter => GoogleApi.Compute.V1.Model.LogConfigCounterOptions.t() | nil,
          :dataAccess => GoogleApi.Compute.V1.Model.LogConfigDataAccessOptions.t() | nil
        }

  field(:cloudAudit, as: GoogleApi.Compute.V1.Model.LogConfigCloudAuditOptions)
  field(:counter, as: GoogleApi.Compute.V1.Model.LogConfigCounterOptions)
  field(:dataAccess, as: GoogleApi.Compute.V1.Model.LogConfigDataAccessOptions)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.LogConfig do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.LogConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.LogConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
