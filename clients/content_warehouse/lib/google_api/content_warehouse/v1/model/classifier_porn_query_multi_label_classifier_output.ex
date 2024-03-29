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

defmodule GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryMultiLabelClassifierOutput do
  @moduledoc """
  Multi-label classification output. It contains the output for each vertical. The output for some verticals can be empty, in case that vertical is not supported by the classifier or if the set of verticals was restricted using MultiLabelClassifierInput.verticals.

  ## Attributes

  *   `csai` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  *   `fringe` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  *   `medical` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  *   `minor` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  *   `offensive` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  *   `porn` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  *   `spoof` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  *   `violence` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  *   `vulgar` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :csai =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil,
          :fringe =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil,
          :medical =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil,
          :minor =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil,
          :offensive =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil,
          :porn =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil,
          :spoof =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil,
          :violence =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil,
          :vulgar =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput.t() | nil
        }

  field(:csai, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
  field(:fringe, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
  field(:medical, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
  field(:minor, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
  field(:offensive, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
  field(:porn, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
  field(:spoof, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
  field(:violence, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
  field(:vulgar, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryClassifierOutput)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryMultiLabelClassifierOutput do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryMultiLabelClassifierOutput.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryMultiLabelClassifierOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
