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

defmodule GoogleApi.SQLAdmin.V1.Model.InstancesTruncateLogRequest do
  @moduledoc """
  Instance truncate log request.

  ## Attributes

  *   `truncateLogContext` (*type:* `GoogleApi.SQLAdmin.V1.Model.TruncateLogContext.t`, *default:* `nil`) - Contains details about the truncate log operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :truncateLogContext => GoogleApi.SQLAdmin.V1.Model.TruncateLogContext.t() | nil
        }

  field(:truncateLogContext, as: GoogleApi.SQLAdmin.V1.Model.TruncateLogContext)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.InstancesTruncateLogRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.InstancesTruncateLogRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.InstancesTruncateLogRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
