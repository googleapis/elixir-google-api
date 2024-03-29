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

defmodule GoogleApi.BigQueryConnection.V1.Model.CloudSpannerProperties do
  @moduledoc """
  Connection properties specific to Cloud Spanner.

  ## Attributes

  *   `database` (*type:* `String.t`, *default:* `nil`) - Cloud Spanner database in the form `project/instance/database'
  *   `databaseRole` (*type:* `String.t`, *default:* `nil`) - Optional. Cloud Spanner database role for fine-grained access control. The Cloud Spanner admin should have provisioned the database role with appropriate permissions, such as `SELECT` and `INSERT`. Other users should only use roles provided by their Cloud Spanner admins. For more details, see [About fine-grained access control] (https://cloud.google.com/spanner/docs/fgac-about). REQUIRES: The database role name must start with a letter, and can only contain letters, numbers, and underscores.
  *   `maxParallelism` (*type:* `integer()`, *default:* `nil`) - Allows setting max parallelism per query when executing on Spanner independent compute resources. If unspecified, default values of parallelism are chosen that are dependent on the Cloud Spanner instance configuration. REQUIRES: `use_parallelism` must be set. REQUIRES: `use_data_boost` must be set.
  *   `useDataBoost` (*type:* `boolean()`, *default:* `nil`) - If set, the request will be executed via Spanner independent compute resources. REQUIRES: `use_parallelism` must be set.
  *   `useParallelism` (*type:* `boolean()`, *default:* `nil`) - If parallelism should be used when reading from Cloud Spanner
  *   `useServerlessAnalytics` (*type:* `boolean()`, *default:* `nil`) - Deprecated: prefer use_data_boost instead. If the serverless analytics service should be used to read data from Cloud Spanner. Note: `use_parallelism` must be set when using serverless analytics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :database => String.t() | nil,
          :databaseRole => String.t() | nil,
          :maxParallelism => integer() | nil,
          :useDataBoost => boolean() | nil,
          :useParallelism => boolean() | nil,
          :useServerlessAnalytics => boolean() | nil
        }

  field(:database)
  field(:databaseRole)
  field(:maxParallelism)
  field(:useDataBoost)
  field(:useParallelism)
  field(:useServerlessAnalytics)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryConnection.V1.Model.CloudSpannerProperties do
  def decode(value, options) do
    GoogleApi.BigQueryConnection.V1.Model.CloudSpannerProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryConnection.V1.Model.CloudSpannerProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
