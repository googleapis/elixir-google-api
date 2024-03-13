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

defmodule GoogleApi.BinaryAuthorization.V1.Model.GkePolicy do
  @moduledoc """
  A Binary Authorization policy for a GKE cluster. This is one type of policy that can occur as a `PlatformPolicy`.

  ## Attributes

  *   `checkSets` (*type:* `list(GoogleApi.BinaryAuthorization.V1.Model.CheckSet.t)`, *default:* `nil`) - Optional. The `CheckSet` objects to apply, scoped by namespace or namespace and service account. Exactly one `CheckSet` will be evaluated for a given Pod (unless the list is empty, in which case the behavior is "always allow"). If multiple `CheckSet` objects have scopes that match the namespace and service account of the Pod being evaluated, only the `CheckSet` with the MOST SPECIFIC scope will match. `CheckSet` objects must be listed in order of decreasing specificity, i.e. if a scope matches a given service account (which must include the namespace), it must come before a `CheckSet` with a scope matching just that namespace. This property is enforced by server-side validation. The purpose of this restriction is to ensure that if more than one `CheckSet` matches a given Pod, the `CheckSet` that will be evaluated will always be the first in the list to match (because if any other matches, it must be less specific). If `check_sets` is empty, the default behavior is to allow all images. If `check_sets` is non-empty, the last `check_sets` entry must always be a `CheckSet` with no scope set, i.e. a catchall to handle any situation not caught by the preceding `CheckSet` objects.
  *   `imageAllowlist` (*type:* `GoogleApi.BinaryAuthorization.V1.Model.ImageAllowlist.t`, *default:* `nil`) - Optional. Images exempted from this policy. If any of the patterns match the image being evaluated, the rest of the policy will not be evaluated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checkSets => list(GoogleApi.BinaryAuthorization.V1.Model.CheckSet.t()) | nil,
          :imageAllowlist => GoogleApi.BinaryAuthorization.V1.Model.ImageAllowlist.t() | nil
        }

  field(:checkSets, as: GoogleApi.BinaryAuthorization.V1.Model.CheckSet, type: :list)
  field(:imageAllowlist, as: GoogleApi.BinaryAuthorization.V1.Model.ImageAllowlist)
end

defimpl Poison.Decoder, for: GoogleApi.BinaryAuthorization.V1.Model.GkePolicy do
  def decode(value, options) do
    GoogleApi.BinaryAuthorization.V1.Model.GkePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BinaryAuthorization.V1.Model.GkePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end