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

defmodule GoogleApi.Script.V1.Model.Deployment do
  @moduledoc """
  Representation of a single script deployment.

  ## Attributes

  - deploymentConfig (DeploymentConfig): The deployment configuration. Defaults to: `null`.
  - deploymentId (String.t): The deployment ID for this deployment. Defaults to: `null`.
  - entryPoints ([EntryPoint]): The deployment&#39;s entry points. Defaults to: `null`.
  - functionSet (GoogleAppsScriptTypeFunctionSet): Script&#39;s defined set of functions. Defaults to: `null`.
  - scopeSet (GoogleAppsScriptTypeScopeSet): Set of scopes required by the deployment. Defaults to: `null`.
  - updateTime (DateTime.t): Last modified date time stamp. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deploymentConfig => GoogleApi.Script.V1.Model.DeploymentConfig.t(),
          :deploymentId => any(),
          :entryPoints => list(GoogleApi.Script.V1.Model.EntryPoint.t()),
          :functionSet => GoogleApi.Script.V1.Model.GoogleAppsScriptTypeFunctionSet.t(),
          :scopeSet => GoogleApi.Script.V1.Model.GoogleAppsScriptTypeScopeSet.t(),
          :updateTime => DateTime.t()
        }

  field(:deploymentConfig, as: GoogleApi.Script.V1.Model.DeploymentConfig)
  field(:deploymentId)
  field(:entryPoints, as: GoogleApi.Script.V1.Model.EntryPoint, type: :list)
  field(:functionSet, as: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeFunctionSet)
  field(:scopeSet, as: GoogleApi.Script.V1.Model.GoogleAppsScriptTypeScopeSet)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.Deployment do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.Deployment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.Deployment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
