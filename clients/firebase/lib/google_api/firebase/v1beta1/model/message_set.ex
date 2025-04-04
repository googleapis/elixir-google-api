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

defmodule GoogleApi.Firebase.V1beta1.Model.MessageSet do
  @moduledoc """
  This is proto2's version of MessageSet. DEPRECATED: DO NOT USE FOR NEW FIELDS. If you are using editions or proto2, please make your own extendable messages for your use case. If you are using proto3, please use `Any` instead. MessageSet was the implementation of extensions for proto1. When proto2 was introduced, extensions were implemented as a first-class feature. This schema for MessageSet was meant to be a "bridge" solution to migrate MessageSet-bearing messages from proto1 to proto2. This schema has been open-sourced only to facilitate the migration of Google products with MessageSet-bearing messages to open-source environments.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: GoogleApi.Firebase.V1beta1.Model.MessageSet do
  def decode(value, options) do
    GoogleApi.Firebase.V1beta1.Model.MessageSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firebase.V1beta1.Model.MessageSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
