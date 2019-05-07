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

defmodule GoogleApi.CloudRun.V1alpha1.Model.Handler do
  @moduledoc """
  Handler defines a specific action that should be taken

  ## Attributes

  - exec (ExecAction): One and only one of the following should be specified. Exec specifies the action to take. +optional Defaults to: `null`.
  - httpGet (HttpGetAction): HTTPGet specifies the http request to perform. +optional Defaults to: `null`.
  - tcpSocket (TcpSocketAction): TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exec => GoogleApi.CloudRun.V1alpha1.Model.ExecAction.t(),
          :httpGet => GoogleApi.CloudRun.V1alpha1.Model.HttpGetAction.t(),
          :tcpSocket => GoogleApi.CloudRun.V1alpha1.Model.TcpSocketAction.t()
        }

  field(:exec, as: GoogleApi.CloudRun.V1alpha1.Model.ExecAction)
  field(:httpGet, as: GoogleApi.CloudRun.V1alpha1.Model.HttpGetAction)
  field(:tcpSocket, as: GoogleApi.CloudRun.V1alpha1.Model.TcpSocketAction)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.Handler do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.Handler.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.Handler do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
