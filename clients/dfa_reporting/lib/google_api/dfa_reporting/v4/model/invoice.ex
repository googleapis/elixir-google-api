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

defmodule GoogleApi.DFAReporting.V4.Model.Invoice do
  @moduledoc """
  Contains information about a single invoice

  ## Attributes

  *   `campaign_summaries` (*type:* `list(GoogleApi.DFAReporting.V4.Model.CampaignSummary.t)`, *default:* `nil`) - The list of summarized campaign information associated with this invoice.
  *   `correctedInvoiceId` (*type:* `String.t`, *default:* `nil`) - The originally issued invoice that is being adjusted by this invoice, if applicable. May appear on invoice PDF as *Reference invoice number*.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - Invoice currency code in ISO 4217 format.
  *   `dueDate` (*type:* `String.t`, *default:* `nil`) - The invoice due date.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this invoice.
  *   `invoiceType` (*type:* `String.t`, *default:* `nil`) - The type of invoice document.
  *   `issueDate` (*type:* `String.t`, *default:* `nil`) - The date when the invoice was issued.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#invoice".
  *   `paymentsAccountId` (*type:* `String.t`, *default:* `nil`) - The ID of the payments account the invoice belongs to. Appears on the invoice PDF as *Billing Account Number*.
  *   `paymentsProfileId` (*type:* `String.t`, *default:* `nil`) - The ID of the payments profile the invoice belongs to. Appears on the invoice PDF as *Billing ID*.
  *   `pdfUrl` (*type:* `String.t`, *default:* `nil`) - The URL to download a PDF copy of the invoice. Note that this URL is user specific and requires a valid OAuth 2.0 access token to access. The access token must be provided in an *Authorization: Bearer* HTTP header. The URL will only be usable for 7 days from when the api is called.
  *   `purchaseOrderNumber` (*type:* `String.t`, *default:* `nil`) - Purchase order number associated with the invoice.
  *   `replacedInvoiceIds` (*type:* `list(String.t)`, *default:* `nil`) - The originally issued invoice(s) that is being cancelled by this invoice, if applicable. May appear on invoice PDF as *Replaced invoice numbers*. Note: There may be multiple replaced invoices due to consolidation of multiple invoices into a single invoice.
  *   `serviceEndDate` (*type:* `String.t`, *default:* `nil`) - The invoice service end date.
  *   `serviceStartDate` (*type:* `String.t`, *default:* `nil`) - The invoice service start date.
  *   `subtotalAmountMicros` (*type:* `String.t`, *default:* `nil`) - The pre-tax subtotal amount, in micros of the invoice's currency.
  *   `totalAmountMicros` (*type:* `String.t`, *default:* `nil`) - The invoice total amount, in micros of the invoice's currency.
  *   `totalTaxAmountMicros` (*type:* `String.t`, *default:* `nil`) - The sum of all taxes in invoice, in micros of the invoice's currency.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :campaign_summaries => list(GoogleApi.DFAReporting.V4.Model.CampaignSummary.t()) | nil,
          :correctedInvoiceId => String.t() | nil,
          :currencyCode => String.t() | nil,
          :dueDate => String.t() | nil,
          :id => String.t() | nil,
          :invoiceType => String.t() | nil,
          :issueDate => String.t() | nil,
          :kind => String.t() | nil,
          :paymentsAccountId => String.t() | nil,
          :paymentsProfileId => String.t() | nil,
          :pdfUrl => String.t() | nil,
          :purchaseOrderNumber => String.t() | nil,
          :replacedInvoiceIds => list(String.t()) | nil,
          :serviceEndDate => String.t() | nil,
          :serviceStartDate => String.t() | nil,
          :subtotalAmountMicros => String.t() | nil,
          :totalAmountMicros => String.t() | nil,
          :totalTaxAmountMicros => String.t() | nil
        }

  field(:campaign_summaries, as: GoogleApi.DFAReporting.V4.Model.CampaignSummary, type: :list)
  field(:correctedInvoiceId)
  field(:currencyCode)
  field(:dueDate)
  field(:id)
  field(:invoiceType)
  field(:issueDate)
  field(:kind)
  field(:paymentsAccountId)
  field(:paymentsProfileId)
  field(:pdfUrl)
  field(:purchaseOrderNumber)
  field(:replacedInvoiceIds, type: :list)
  field(:serviceEndDate)
  field(:serviceStartDate)
  field(:subtotalAmountMicros)
  field(:totalAmountMicros)
  field(:totalTaxAmountMicros)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V4.Model.Invoice do
  def decode(value, options) do
    GoogleApi.DFAReporting.V4.Model.Invoice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V4.Model.Invoice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
