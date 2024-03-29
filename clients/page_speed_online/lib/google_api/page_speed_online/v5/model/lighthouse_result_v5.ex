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

defmodule GoogleApi.PageSpeedOnline.V5.Model.LighthouseResultV5 do
  @moduledoc """
  The Lighthouse result object.

  ## Attributes

  *   `audits` (*type:* `%{optional(String.t) => GoogleApi.PageSpeedOnline.V5.Model.LighthouseAuditResultV5.t}`, *default:* `nil`) - Map of audits in the LHR.
  *   `categories` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.Categories.t`, *default:* `nil`) - Map of categories in the LHR.
  *   `categoryGroups` (*type:* `%{optional(String.t) => GoogleApi.PageSpeedOnline.V5.Model.CategoryGroupV5.t}`, *default:* `nil`) - Map of category groups in the LHR.
  *   `configSettings` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.ConfigSettings.t`, *default:* `nil`) - The configuration settings for this LHR.
  *   `entities` (*type:* `list(GoogleApi.PageSpeedOnline.V5.Model.LhrEntity.t)`, *default:* `nil`) - Entity classification data.
  *   `environment` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.Environment.t`, *default:* `nil`) - Environment settings that were used when making this LHR.
  *   `fetchTime` (*type:* `String.t`, *default:* `nil`) - The time that this run was fetched.
  *   `finalDisplayedUrl` (*type:* `String.t`, *default:* `nil`) - URL displayed on the page after Lighthouse finishes.
  *   `finalUrl` (*type:* `String.t`, *default:* `nil`) - The final resolved url that was audited.
  *   `fullPageScreenshot` (*type:* `any()`, *default:* `nil`) - Screenshot data of the full page, along with node rects relevant to the audit results.
  *   `i18n` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.I18n.t`, *default:* `nil`) - The internationalization strings that are required to render the LHR.
  *   `lighthouseVersion` (*type:* `String.t`, *default:* `nil`) - The lighthouse version that was used to generate this LHR.
  *   `mainDocumentUrl` (*type:* `String.t`, *default:* `nil`) - URL of the main document request of the final navigation.
  *   `requestedUrl` (*type:* `String.t`, *default:* `nil`) - The original requested url.
  *   `runWarnings` (*type:* `list(any())`, *default:* `nil`) - List of all run warnings in the LHR. Will always output to at least `[]`.
  *   `runtimeError` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.RuntimeError.t`, *default:* `nil`) - A top-level error message that, if present, indicates a serious enough problem that this Lighthouse result may need to be discarded.
  *   `stackPacks` (*type:* `list(GoogleApi.PageSpeedOnline.V5.Model.StackPack.t)`, *default:* `nil`) - The Stack Pack advice strings.
  *   `timing` (*type:* `GoogleApi.PageSpeedOnline.V5.Model.Timing.t`, *default:* `nil`) - Timing information for this LHR.
  *   `userAgent` (*type:* `String.t`, *default:* `nil`) - The user agent that was used to run this LHR.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audits =>
            %{
              optional(String.t()) =>
                GoogleApi.PageSpeedOnline.V5.Model.LighthouseAuditResultV5.t()
            }
            | nil,
          :categories => GoogleApi.PageSpeedOnline.V5.Model.Categories.t() | nil,
          :categoryGroups =>
            %{optional(String.t()) => GoogleApi.PageSpeedOnline.V5.Model.CategoryGroupV5.t()}
            | nil,
          :configSettings => GoogleApi.PageSpeedOnline.V5.Model.ConfigSettings.t() | nil,
          :entities => list(GoogleApi.PageSpeedOnline.V5.Model.LhrEntity.t()) | nil,
          :environment => GoogleApi.PageSpeedOnline.V5.Model.Environment.t() | nil,
          :fetchTime => String.t() | nil,
          :finalDisplayedUrl => String.t() | nil,
          :finalUrl => String.t() | nil,
          :fullPageScreenshot => any() | nil,
          :i18n => GoogleApi.PageSpeedOnline.V5.Model.I18n.t() | nil,
          :lighthouseVersion => String.t() | nil,
          :mainDocumentUrl => String.t() | nil,
          :requestedUrl => String.t() | nil,
          :runWarnings => list(any()) | nil,
          :runtimeError => GoogleApi.PageSpeedOnline.V5.Model.RuntimeError.t() | nil,
          :stackPacks => list(GoogleApi.PageSpeedOnline.V5.Model.StackPack.t()) | nil,
          :timing => GoogleApi.PageSpeedOnline.V5.Model.Timing.t() | nil,
          :userAgent => String.t() | nil
        }

  field(:audits, as: GoogleApi.PageSpeedOnline.V5.Model.LighthouseAuditResultV5, type: :map)
  field(:categories, as: GoogleApi.PageSpeedOnline.V5.Model.Categories)
  field(:categoryGroups, as: GoogleApi.PageSpeedOnline.V5.Model.CategoryGroupV5, type: :map)
  field(:configSettings, as: GoogleApi.PageSpeedOnline.V5.Model.ConfigSettings)
  field(:entities, as: GoogleApi.PageSpeedOnline.V5.Model.LhrEntity, type: :list)
  field(:environment, as: GoogleApi.PageSpeedOnline.V5.Model.Environment)
  field(:fetchTime)
  field(:finalDisplayedUrl)
  field(:finalUrl)
  field(:fullPageScreenshot)
  field(:i18n, as: GoogleApi.PageSpeedOnline.V5.Model.I18n)
  field(:lighthouseVersion)
  field(:mainDocumentUrl)
  field(:requestedUrl)
  field(:runWarnings, type: :list)
  field(:runtimeError, as: GoogleApi.PageSpeedOnline.V5.Model.RuntimeError)
  field(:stackPacks, as: GoogleApi.PageSpeedOnline.V5.Model.StackPack, type: :list)
  field(:timing, as: GoogleApi.PageSpeedOnline.V5.Model.Timing)
  field(:userAgent)
end

defimpl Poison.Decoder, for: GoogleApi.PageSpeedOnline.V5.Model.LighthouseResultV5 do
  def decode(value, options) do
    GoogleApi.PageSpeedOnline.V5.Model.LighthouseResultV5.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PageSpeedOnline.V5.Model.LighthouseResultV5 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
