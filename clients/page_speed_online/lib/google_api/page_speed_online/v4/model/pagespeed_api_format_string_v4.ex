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

defmodule GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4 do
  @moduledoc """


  ## Attributes

  *   `args` (*type:* `list(GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4Args.t)`, *default:* `nil`) - List of arguments for the format string.
  *   `format` (*type:* `String.t`, *default:* `nil`) - A localized format string with {{FOO}} placeholders, where 'FOO' is the key of the argument whose value should be substituted. For HYPERLINK arguments, the format string will instead contain {{BEGIN_FOO}} and {{END_FOO}} for the argument with key 'FOO'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :args => list(GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4Args.t()),
          :format => String.t()
        }

  field(:args, as: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4Args, type: :list)
  field(:format)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4 do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V4.Model.PagespeedApiFormatStringV4 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
