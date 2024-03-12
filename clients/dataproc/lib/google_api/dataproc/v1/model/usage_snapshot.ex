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

defmodule GoogleApi.Dataproc.V1.Model.UsageSnapshot do
  @moduledoc """
  The usage snapshot represents the resources consumed by a workload at a specified time.

  ## Attributes

  *   `acceleratorType` (*type:* `String.t`, *default:* `nil`) - Optional. Accelerator type being used, if any
  *   `milliAccelerator` (*type:* `String.t`, *default:* `nil`) - Optional. Milli (one-thousandth) accelerator. (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  *   `milliDcu` (*type:* `String.t`, *default:* `nil`) - Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  *   `milliDcuPremium` (*type:* `String.t`, *default:* `nil`) - Optional. Milli (one-thousandth) Dataproc Compute Units (DCUs) charged at premium tier (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing)).
  *   `shuffleStorageGb` (*type:* `String.t`, *default:* `nil`) - Optional. Shuffle Storage in gigabytes (GB). (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  *   `shuffleStorageGbPremium` (*type:* `String.t`, *default:* `nil`) - Optional. Shuffle Storage in gigabytes (GB) charged at premium tier. (see Dataproc Serverless pricing (https://cloud.google.com/dataproc-serverless/pricing))
  *   `snapshotTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The timestamp of the usage snapshot.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceleratorType => String.t() | nil,
          :milliAccelerator => String.t() | nil,
          :milliDcu => String.t() | nil,
          :milliDcuPremium => String.t() | nil,
          :shuffleStorageGb => String.t() | nil,
          :shuffleStorageGbPremium => String.t() | nil,
          :snapshotTime => DateTime.t() | nil
        }

  field(:acceleratorType)
  field(:milliAccelerator)
  field(:milliDcu)
  field(:milliDcuPremium)
  field(:shuffleStorageGb)
  field(:shuffleStorageGbPremium)
  field(:snapshotTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.UsageSnapshot do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.UsageSnapshot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.UsageSnapshot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
