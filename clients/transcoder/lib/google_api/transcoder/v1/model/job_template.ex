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

defmodule GoogleApi.Transcoder.V1.Model.JobTemplate do
  @moduledoc """
  Transcoding job template resource.

  ## Attributes

  *   `config` (*type:* `GoogleApi.Transcoder.V1.Model.JobConfig.t`, *default:* `nil`) - The configuration for this template.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this job template. You can use these to organize and group your job templates.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :config => GoogleApi.Transcoder.V1.Model.JobConfig.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil
        }

  field(:config, as: GoogleApi.Transcoder.V1.Model.JobConfig)
  field(:labels, type: :map)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.JobTemplate do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.JobTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.JobTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
