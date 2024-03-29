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

defmodule GoogleApi.MyBusinessQAndA.V1.Model.Answer do
  @moduledoc """
  Represents an answer to a question

  ## Attributes

  *   `author` (*type:* `GoogleApi.MyBusinessQAndA.V1.Model.Author.t`, *default:* `nil`) - Output only. The author of the answer. Will only be set during list operations.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp for when the answer was written. Only retrieved during ListResponse fetching.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The unique name for the answer locations/*/questions/*/answers/*
  *   `text` (*type:* `String.t`, *default:* `nil`) - Required. The text of the answer. It should contain at least one non-whitespace character. The maximum length is 4096 characters.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp for when the answer was last modified.
  *   `upvoteCount` (*type:* `integer()`, *default:* `nil`) - Output only. The number of upvotes for the answer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :author => GoogleApi.MyBusinessQAndA.V1.Model.Author.t() | nil,
          :createTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :text => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :upvoteCount => integer() | nil
        }

  field(:author, as: GoogleApi.MyBusinessQAndA.V1.Model.Author)
  field(:createTime, as: DateTime)
  field(:name)
  field(:text)
  field(:updateTime, as: DateTime)
  field(:upvoteCount)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessQAndA.V1.Model.Answer do
  def decode(value, options) do
    GoogleApi.MyBusinessQAndA.V1.Model.Answer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessQAndA.V1.Model.Answer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
