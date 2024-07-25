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

defmodule GoogleApi.PageSpeedOnline.V5.Model.Categories do
  @moduledoc """
  The categories in a Lighthouse run.

  ## Attributes

  *   `accessibility` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t`, *default:* `nil`) - The accessibility category, containing all accessibility related audits.
  *   `best-practices` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t`, *default:* `nil`) - The best practices category, containing all best practices related audits.
  *   `performance` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t`, *default:* `nil`) - The performance category, containing all performance related audits.
  *   `pwa` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t`, *default:* `nil`) - The Progressive-Web-App (PWA) category, containing all pwa related audits. This is deprecated in Lighthouse's 12.0 release.
  *   `seo` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t`, *default:* `nil`) - The Search-Engine-Optimization (SEO) category, containing all seo related audits.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessibility => GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t() | nil,
          :"best-practices" => GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t() | nil,
          :performance => GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t() | nil,
          :pwa => GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t() | nil,
          :seo => GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5.t() | nil
        }

  field(:accessibility, as: GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5)
  field(:"best-practices", as: GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5)
  field(:performance, as: GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5)
  field(:pwa, as: GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5)
  field(:seo, as: GoogleApi.PageSpeedOnline.V5.Model.LighthouseCategoryV5)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V5.Model.Categories do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V5.Model.Categories.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V5.Model.Categories do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
