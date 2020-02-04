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

defmodule GoogleApi.AlertCenter.V1beta1.Model.ResourceInfo do
  @moduledoc """
  Proto that contains resource information.

  ## Attributes

  *   `documentId` (*type:* `String.t`, *default:* `nil`) - Drive file ID.
  *   `resourceTitle` (*type:* `String.t`, *default:* `nil`) - Title of the resource, e.g. email subject, or document title.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentId => String.t(),
          :resourceTitle => String.t()
        }

  field(:documentId)
  field(:resourceTitle)
end

defimpl Poison.Decoder, for: GoogleApi.AlertCenter.V1beta1.Model.ResourceInfo do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.ResourceInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlertCenter.V1beta1.Model.ResourceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
