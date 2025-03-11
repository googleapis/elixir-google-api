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

defmodule GoogleApi.Forms.V1.Model.PublishSettings do
  @moduledoc """
  The publishing settings of a form.

  ## Attributes

  *   `publishState` (*type:* `GoogleApi.Forms.V1.Model.PublishState.t`, *default:* `nil`) - Optional. The publishing state of a form. When updating `publish_state`, both `is_published` and `is_accepting_responses` must be set. However, setting `is_accepting_responses` to `true` and `is_published` to `false` isn't supported and returns an error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :publishState => GoogleApi.Forms.V1.Model.PublishState.t() | nil
        }

  field(:publishState, as: GoogleApi.Forms.V1.Model.PublishState)
end

defimpl Poison.Decoder, for: GoogleApi.Forms.V1.Model.PublishSettings do
  def decode(value, options) do
    GoogleApi.Forms.V1.Model.PublishSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Forms.V1.Model.PublishSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
