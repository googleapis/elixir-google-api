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

defmodule GoogleApi.Books.V1.Model.Dictlayerdata do
  @moduledoc """


  ## Attributes

  *   `common` (*type:* `GoogleApi.Books.V1.Model.DictlayerdataCommon.t`, *default:* `nil`) - 
  *   `dict` (*type:* `GoogleApi.Books.V1.Model.DictlayerdataDict.t`, *default:* `nil`) - 
  *   `kind` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :common => GoogleApi.Books.V1.Model.DictlayerdataCommon.t() | nil,
          :dict => GoogleApi.Books.V1.Model.DictlayerdataDict.t() | nil,
          :kind => String.t() | nil
        }

  field(:common, as: GoogleApi.Books.V1.Model.DictlayerdataCommon)
  field(:dict, as: GoogleApi.Books.V1.Model.DictlayerdataDict)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.Dictlayerdata do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.Dictlayerdata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.Dictlayerdata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
