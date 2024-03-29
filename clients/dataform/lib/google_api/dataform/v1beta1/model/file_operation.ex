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

defmodule GoogleApi.Dataform.V1beta1.Model.FileOperation do
  @moduledoc """
  Represents a single file operation to the repository.

  ## Attributes

  *   `deleteFile` (*type:* `GoogleApi.Dataform.V1beta1.Model.DeleteFile.t`, *default:* `nil`) - Represents the delete operation.
  *   `writeFile` (*type:* `GoogleApi.Dataform.V1beta1.Model.WriteFile.t`, *default:* `nil`) - Represents the write operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deleteFile => GoogleApi.Dataform.V1beta1.Model.DeleteFile.t() | nil,
          :writeFile => GoogleApi.Dataform.V1beta1.Model.WriteFile.t() | nil
        }

  field(:deleteFile, as: GoogleApi.Dataform.V1beta1.Model.DeleteFile)
  field(:writeFile, as: GoogleApi.Dataform.V1beta1.Model.WriteFile)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.FileOperation do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.FileOperation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.FileOperation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
