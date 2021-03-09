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

defmodule GoogleApi.Content.V21.Model.OrdersCreateTestOrderRequest do
  @moduledoc """


  ## Attributes

  *   `country` (*type:* `String.t`, *default:* `nil`) - The CLDR territory code of the country of the test order to create. Affects the currency and addresses of orders created via `template_name`, or the addresses of orders created via `test_order`. Acceptable values are: - "`US`" - "`FR`" Defaults to `US`.
  *   `templateName` (*type:* `String.t`, *default:* `nil`) - The test order template to use. Specify as an alternative to `testOrder` as a shortcut for retrieving a template and then creating an order using that template. Acceptable values are: - "`template1`" - "`template1a`" - "`template1b`" - "`template2`" - "`template3`" 
  *   `testOrder` (*type:* `GoogleApi.Content.V21.Model.TestOrder.t`, *default:* `nil`) - The test order to create.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :country => String.t() | nil,
          :templateName => String.t() | nil,
          :testOrder => GoogleApi.Content.V21.Model.TestOrder.t() | nil
        }

  field(:country)
  field(:templateName)
  field(:testOrder, as: GoogleApi.Content.V21.Model.TestOrder)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrdersCreateTestOrderRequest do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrdersCreateTestOrderRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrdersCreateTestOrderRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
