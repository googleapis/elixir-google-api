# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.AddProtectedRangeRequest do
  @moduledoc """
  Adds a new protected range.

  ## Attributes

  - protectedRange (ProtectedRange): The protected range to be added. The protectedRangeId field is optional; if one is not set, an id will be randomly generated. (It is an error to specify the ID of a range that already exists.) Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :protectedRange => GoogleApi.Sheets.V4.Model.ProtectedRange.t()
        }

  field(:protectedRange, as: GoogleApi.Sheets.V4.Model.ProtectedRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.AddProtectedRangeRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.AddProtectedRangeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.AddProtectedRangeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
