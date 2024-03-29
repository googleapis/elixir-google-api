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

defmodule GoogleApi.WorkflowExecutions.V1.Model.NavigationInfo do
  @moduledoc """
  NavigationInfo describes what steps if any come before or after this step, or what steps are parents or children of this step.

  ## Attributes

  *   `children` (*type:* `list(String.t)`, *default:* `nil`) - Step entries that can be reached by "stepping into" e.g. a subworkflow call.
  *   `next` (*type:* `String.t`, *default:* `nil`) - The index of the next step in the current workflow, if any.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The step entry, if any, that can be reached by "stepping out" of the current workflow being executed.
  *   `previous` (*type:* `String.t`, *default:* `nil`) - The index of the previous step in the current workflow, if any.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :children => list(String.t()) | nil,
          :next => String.t() | nil,
          :parent => String.t() | nil,
          :previous => String.t() | nil
        }

  field(:children, type: :list)
  field(:next)
  field(:parent)
  field(:previous)
end

defimpl Poison.Decoder, for: GoogleApi.WorkflowExecutions.V1.Model.NavigationInfo do
  def decode(value, options) do
    GoogleApi.WorkflowExecutions.V1.Model.NavigationInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkflowExecutions.V1.Model.NavigationInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
