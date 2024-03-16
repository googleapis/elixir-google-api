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

defmodule GoogleApi.Dataform.V1beta1.Model.CompilationError do
  @moduledoc """
  An error encountered when attempting to compile a Dataform project.

  ## Attributes

  *   `actionTarget` (*type:* `GoogleApi.Dataform.V1beta1.Model.Target.t`, *default:* `nil`) - Output only. The identifier of the action where this error occurred, if available.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Output only. The error's top level message.
  *   `path` (*type:* `String.t`, *default:* `nil`) - Output only. The path of the file where this error occurred, if available, relative to the project root.
  *   `stack` (*type:* `String.t`, *default:* `nil`) - Output only. The error's full stack trace.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionTarget => GoogleApi.Dataform.V1beta1.Model.Target.t() | nil,
          :message => String.t() | nil,
          :path => String.t() | nil,
          :stack => String.t() | nil
        }

  field(:actionTarget, as: GoogleApi.Dataform.V1beta1.Model.Target)
  field(:message)
  field(:path)
  field(:stack)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.CompilationError do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.CompilationError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.CompilationError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end