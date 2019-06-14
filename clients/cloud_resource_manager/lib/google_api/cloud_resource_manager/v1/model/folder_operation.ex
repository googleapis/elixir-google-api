# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudResourceManager.V1.Model.FolderOperation do
  @moduledoc """
  Metadata describing a long running folder operation

  ## Attributes

  - destinationParent (String.t): The resource name of the folder or organization we are either creating
  the folder under or moving the folder to. Defaults to `nil`.
  - displayName (String.t): The display name of the folder. Defaults to `nil`.
  - operationType (String.t): The type of this operation. Defaults to `nil`.
  - sourceParent (String.t): The resource name of the folder's parent.
  Only applicable when the operation_type is MOVE. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationParent => String.t(),
          :displayName => String.t(),
          :operationType => String.t(),
          :sourceParent => String.t()
        }

  field(:destinationParent)
  field(:displayName)
  field(:operationType)
  field(:sourceParent)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.FolderOperation do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.FolderOperation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.FolderOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
