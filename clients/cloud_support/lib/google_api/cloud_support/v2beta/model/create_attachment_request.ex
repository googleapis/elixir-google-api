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

defmodule GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest do
  @moduledoc """
  The request message for the CreateAttachment endpoint.

  ## Attributes

  *   `attachment` (*type:* `GoogleApi.CloudSupport.V2beta.Model.Attachment.t`, *default:* `nil`) - Required. The attachment to be created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attachment => GoogleApi.CloudSupport.V2beta.Model.Attachment.t() | nil
        }

  field(:attachment, as: GoogleApi.CloudSupport.V2beta.Model.Attachment)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest do
  def decode(value, options) do
    GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSupport.V2beta.Model.CreateAttachmentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
