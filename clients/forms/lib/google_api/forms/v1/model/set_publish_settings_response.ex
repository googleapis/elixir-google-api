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

defmodule GoogleApi.Forms.V1.Model.SetPublishSettingsResponse do
  @moduledoc """
  The response of a `SetPublishSettings` request.

  ## Attributes

  *   `formId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the Form. This is same as the `Form.form_id` field.
  *   `publishSettings` (*type:* `GoogleApi.Forms.V1.Model.PublishSettings.t`, *default:* `nil`) - The publish settings of the form.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formId => String.t() | nil,
          :publishSettings => GoogleApi.Forms.V1.Model.PublishSettings.t() | nil
        }

  field(:formId)
  field(:publishSettings, as: GoogleApi.Forms.V1.Model.PublishSettings)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.SetPublishSettingsResponse do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.SetPublishSettingsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.SetPublishSettingsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
