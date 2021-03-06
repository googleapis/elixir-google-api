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

defmodule GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpec do
  @moduledoc """
  You can use schemas to add custom fields to user profiles. You can use these fields to store information such as the projects your users work on, their physical locations, their hire dates, or whatever else fits your business needs. For more information, see [Custom User Fields](/admin-sdk/directory/v1/guides/manage-schemas).

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display Name of the field.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - The ETag of the field.
  *   `fieldId` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the field (Read-only)
  *   `fieldName` (*type:* `String.t`, *default:* `nil`) - The name of the field.
  *   `fieldType` (*type:* `String.t`, *default:* `nil`) - The type of the field.
  *   `indexed` (*type:* `boolean()`, *default:* `true`) - Boolean specifying whether the field is indexed or not. Default: `true`.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#schema#fieldspec`) - The kind of resource this is. For schema fields this is always `admin#directory#schema#fieldspec`.
  *   `multiValued` (*type:* `boolean()`, *default:* `nil`) - A boolean specifying whether this is a multi-valued field or not. Default: `false`.
  *   `numericIndexingSpec` (*type:* `GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpecNumericIndexingSpec.t`, *default:* `nil`) - Indexing spec for a numeric field. By default, only exact match queries will be supported for numeric fields. Setting the `numericIndexingSpec` allows range queries to be supported.
  *   `readAccessType` (*type:* `String.t`, *default:* `ALL_DOMAIN_USERS`) - Specifies who can view values of this field. See [Retrieve users as a non-administrator](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin) for more information. Note: It may take up to 24 hours for changes to this field to be reflected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :etag => String.t() | nil,
          :fieldId => String.t() | nil,
          :fieldName => String.t() | nil,
          :fieldType => String.t() | nil,
          :indexed => boolean() | nil,
          :kind => String.t() | nil,
          :multiValued => boolean() | nil,
          :numericIndexingSpec =>
            GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpecNumericIndexingSpec.t() | nil,
          :readAccessType => String.t() | nil
        }

  field(:displayName)
  field(:etag)
  field(:fieldId)
  field(:fieldName)
  field(:fieldType)
  field(:indexed)
  field(:kind)
  field(:multiValued)

  field(:numericIndexingSpec,
    as: GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpecNumericIndexingSpec
  )

  field(:readAccessType)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpec do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.SchemaFieldSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
