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

defmodule GoogleApi.AppEngine.V1.Model.GceTag do
  @moduledoc """
  For use only by GCE. GceTag is a wrapper around the GCE administrative tag with parent info.

  ## Attributes

  *   `parent` (*type:* `list(String.t)`, *default:* `nil`) - The parents(s) of the tag. Eg. projects/123, folders/456 It usually contains only one parent. But, in some corner cases, it can contain multiple parents. Currently, organizations are not supported.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - The administrative_tag name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parent => list(String.t()) | nil,
          :tag => String.t() | nil
        }

  field(:parent, type: :list)
  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.GceTag do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.GceTag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.GceTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
