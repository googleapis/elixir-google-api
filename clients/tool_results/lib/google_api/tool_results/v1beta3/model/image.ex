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

defmodule GoogleApi.ToolResults.V1beta3.Model.Image do
  @moduledoc """
  An image, with a link to the main image and a thumbnail.

  ## Attributes

  *   `error` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Status.t`, *default:* `nil`) - An error explaining why the thumbnail could not be rendered.
  *   `sourceImage` (*type:* `GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference.t`, *default:* `nil`) - A reference to the full-size, original image. This is the same as the tool_outputs entry for the image under its Step. Always set.
  *   `stepId` (*type:* `String.t`, *default:* `nil`) - The step to which the image is attached. Always set.
  *   `thumbnail` (*type:* `GoogleApi.ToolResults.V1beta3.Model.Thumbnail.t`, *default:* `nil`) - The thumbnail.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.ToolResults.V1beta3.Model.Status.t(),
          :sourceImage => GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference.t(),
          :stepId => String.t(),
          :thumbnail => GoogleApi.ToolResults.V1beta3.Model.Thumbnail.t()
        }

  field(:error, as: GoogleApi.ToolResults.V1beta3.Model.Status)
  field(:sourceImage, as: GoogleApi.ToolResults.V1beta3.Model.ToolOutputReference)
  field(:stepId)
  field(:thumbnail, as: GoogleApi.ToolResults.V1beta3.Model.Thumbnail)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.Image do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.Image.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.Image do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
