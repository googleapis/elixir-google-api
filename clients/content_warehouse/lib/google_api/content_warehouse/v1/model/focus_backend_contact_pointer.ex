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

defmodule GoogleApi.ContentWarehouse.V1.Model.FocusBackendContactPointer do
  @moduledoc """
  A contact pointer that represents a contact (http://go/assistant-contact-id).

  ## Attributes

  *   `annotationId` (*type:* `String.t`, *default:* `nil`) - The annotation ID. Annotations are only allowed to point to annotations that do not themselves have a pointer (avoids any possibilty of loops). Cast this field to string in javascript to make it compile in js.
  *   `deviceRawContactId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceRawContactId.t`, *default:* `nil`) - The raw contact ID from an active mobile device of the user.
  *   `focusContactId` (*type:* `String.t`, *default:* `nil`) - The contact ID from the Focus backend. Cast this field to string in javascript to make it compile in js.
  *   `otherContactId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FocusBackendOtherContactId.t`, *default:* `nil`) - Additional contact ids that are not actively used to match contact pointers to contacts.
  *   `secondaryId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FocusBackendSecondaryContactId.t`, *default:* `nil`) - The secondary identifier of contact. It will be used when the primary ID doesn't match any contact.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationId => String.t() | nil,
          :deviceRawContactId =>
            GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceRawContactId.t() | nil,
          :focusContactId => String.t() | nil,
          :otherContactId =>
            GoogleApi.ContentWarehouse.V1.Model.FocusBackendOtherContactId.t() | nil,
          :secondaryId =>
            GoogleApi.ContentWarehouse.V1.Model.FocusBackendSecondaryContactId.t() | nil
        }

  field(:annotationId)

  field(:deviceRawContactId,
    as: GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceRawContactId
  )

  field(:focusContactId)
  field(:otherContactId, as: GoogleApi.ContentWarehouse.V1.Model.FocusBackendOtherContactId)
  field(:secondaryId, as: GoogleApi.ContentWarehouse.V1.Model.FocusBackendSecondaryContactId)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.FocusBackendContactPointer do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.FocusBackendContactPointer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.FocusBackendContactPointer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
