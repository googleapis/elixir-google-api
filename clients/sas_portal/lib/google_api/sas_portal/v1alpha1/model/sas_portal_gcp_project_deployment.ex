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

defmodule GoogleApi.SASPortal.V1alpha1.Model.SasPortalGcpProjectDeployment do
  @moduledoc """
  Deployment associated with the GCP project. Includes whether SAS analytics has been enabled or not.

  ## Attributes

  *   `deployment` (*type:* `GoogleApi.SASPortal.V1alpha1.Model.SasPortalDeployment.t`, *default:* `nil`) - Deployment associated with the GCP project.
  *   `hasEnabledAnalytics` (*type:* `boolean()`, *default:* `nil`) - Whether SAS analytics has been enabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployment => GoogleApi.SASPortal.V1alpha1.Model.SasPortalDeployment.t() | nil,
          :hasEnabledAnalytics => boolean() | nil
        }

  field(:deployment, as: GoogleApi.SASPortal.V1alpha1.Model.SasPortalDeployment)
  field(:hasEnabledAnalytics)
end

defimpl Poison.Decoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalGcpProjectDeployment do
  def decode(value, options) do
    GoogleApi.SASPortal.V1alpha1.Model.SasPortalGcpProjectDeployment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalGcpProjectDeployment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end