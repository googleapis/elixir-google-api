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

defmodule GoogleApi.Apigee.V1.Model.EdgeConfigstoreBundleBadBundleViolation do
  @moduledoc """
  A message type used to describe a single bundle validation error.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of why the bundle is invalid and how to fix it.
  *   `filename` (*type:* `String.t`, *default:* `nil`) - The filename (including relative path from the bundle root) in which the error occurred.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :filename => String.t() | nil
        }

  field(:description)
  field(:filename)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.EdgeConfigstoreBundleBadBundleViolation do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.EdgeConfigstoreBundleBadBundleViolation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.EdgeConfigstoreBundleBadBundleViolation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
