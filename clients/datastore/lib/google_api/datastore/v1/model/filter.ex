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

defmodule GoogleApi.Datastore.V1.Model.Filter do
  @moduledoc """
  A holder for any type of filter.

  ## Attributes

  *   `compositeFilter` (*type:* `GoogleApi.Datastore.V1.Model.CompositeFilter.t`, *default:* `nil`) - A composite filter.
  *   `propertyFilter` (*type:* `GoogleApi.Datastore.V1.Model.PropertyFilter.t`, *default:* `nil`) - A filter on a property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compositeFilter => GoogleApi.Datastore.V1.Model.CompositeFilter.t() | nil,
          :propertyFilter => GoogleApi.Datastore.V1.Model.PropertyFilter.t() | nil
        }

  field(:compositeFilter, as: GoogleApi.Datastore.V1.Model.CompositeFilter)
  field(:propertyFilter, as: GoogleApi.Datastore.V1.Model.PropertyFilter)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.Filter do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.Filter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.Filter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
