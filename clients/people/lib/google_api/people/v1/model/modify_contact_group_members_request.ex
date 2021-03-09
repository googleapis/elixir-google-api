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

defmodule GoogleApi.People.V1.Model.ModifyContactGroupMembersRequest do
  @moduledoc """
  A request to modify an existing contact group's members. Contacts can be removed from any group but they can only be added to a user group or "myContacts" or "starred" system groups.

  ## Attributes

  *   `resourceNamesToAdd` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The resource names of the contact people to add in the form of `people/{person_id}`. The total number of resource names in `resource_names_to_add` and `resource_names_to_remove` must be less than or equal to 1000.
  *   `resourceNamesToRemove` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The resource names of the contact people to remove in the form of `people/{person_id}`. The total number of resource names in `resource_names_to_add` and `resource_names_to_remove` must be less than or equal to 1000.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resourceNamesToAdd => list(String.t()) | nil,
          :resourceNamesToRemove => list(String.t()) | nil
        }

  field(:resourceNamesToAdd, type: :list)
  field(:resourceNamesToRemove, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.People.V1.Model.ModifyContactGroupMembersRequest do
  def decode(value, options) do
    GoogleApi.People.V1.Model.ModifyContactGroupMembersRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.People.V1.Model.ModifyContactGroupMembersRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
