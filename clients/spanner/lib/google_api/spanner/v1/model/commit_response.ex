# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Spanner.V1.Model.CommitResponse do
  @moduledoc """
  The response for Commit.

  ## Attributes

  - commitTimestamp (DateTime.t): The Cloud Spanner timestamp at which the transaction committed. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commitTimestamp => DateTime.t()
        }

  field(:commitTimestamp, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CommitResponse do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.CommitResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CommitResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
