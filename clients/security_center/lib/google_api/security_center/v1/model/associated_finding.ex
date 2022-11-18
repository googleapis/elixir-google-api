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

defmodule GoogleApi.SecurityCenter.V1.Model.AssociatedFinding do
  @moduledoc """
  A finding that is associated with this node in the exposure path.

  ## Attributes

  *   `canonicalFindingName` (*type:* `String.t`, *default:* `nil`) - Canonical name of the associated findings. Example: organizations/123/sources/456/findings/789
  *   `findingCategory` (*type:* `String.t`, *default:* `nil`) - The additional taxonomy group within findings from a given source.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Full resource name of the finding.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalFindingName => String.t() | nil,
          :findingCategory => String.t() | nil,
          :name => String.t() | nil
        }

  field(:canonicalFindingName)
  field(:findingCategory)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.AssociatedFinding do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.AssociatedFinding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.AssociatedFinding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
