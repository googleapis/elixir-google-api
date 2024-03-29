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

defmodule GoogleApi.DataMigration.V1.Model.MappingRule do
  @moduledoc """
  Definition of a transformation that is to be applied to a group of entities in the source schema. Several such transformations can be applied to an entity sequentially to define the corresponding entity in the target schema.

  ## Attributes

  *   `conditionalColumnSetValue` (*type:* `GoogleApi.DataMigration.V1.Model.ConditionalColumnSetValue.t`, *default:* `nil`) - Optional. Rule to specify how the data contained in a column should be transformed (such as trimmed, rounded, etc) provided that the data meets certain criteria.
  *   `convertRowidColumn` (*type:* `GoogleApi.DataMigration.V1.Model.ConvertRowIdToColumn.t`, *default:* `nil`) - Optional. Rule to specify how multiple tables should be converted with an additional rowid column.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A human readable name
  *   `entityMove` (*type:* `GoogleApi.DataMigration.V1.Model.EntityMove.t`, *default:* `nil`) - Optional. Rule to specify how multiple entities should be relocated into a different schema.
  *   `filter` (*type:* `GoogleApi.DataMigration.V1.Model.MappingRuleFilter.t`, *default:* `nil`) - Required. The rule filter
  *   `filterTableColumns` (*type:* `GoogleApi.DataMigration.V1.Model.FilterTableColumns.t`, *default:* `nil`) - Optional. Rule to specify the list of columns to include or exclude from a table.
  *   `multiColumnDataTypeChange` (*type:* `GoogleApi.DataMigration.V1.Model.MultiColumnDatatypeChange.t`, *default:* `nil`) - Optional. Rule to specify how multiple columns should be converted to a different data type.
  *   `multiEntityRename` (*type:* `GoogleApi.DataMigration.V1.Model.MultiEntityRename.t`, *default:* `nil`) - Optional. Rule to specify how multiple entities should be renamed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Full name of the mapping rule resource, in the form of: projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  *   `revisionCreateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp that the revision was created.
  *   `revisionId` (*type:* `String.t`, *default:* `nil`) - Output only. The revision ID of the mapping rule. A new revision is committed whenever the mapping rule is changed in any way. The format is an 8-character hexadecimal string.
  *   `ruleOrder` (*type:* `String.t`, *default:* `nil`) - Required. The order in which the rule is applied. Lower order rules are applied before higher value rules so they may end up being overridden.
  *   `ruleScope` (*type:* `String.t`, *default:* `nil`) - Required. The rule scope
  *   `setTablePrimaryKey` (*type:* `GoogleApi.DataMigration.V1.Model.SetTablePrimaryKey.t`, *default:* `nil`) - Optional. Rule to specify the primary key for a table
  *   `singleColumnChange` (*type:* `GoogleApi.DataMigration.V1.Model.SingleColumnChange.t`, *default:* `nil`) - Optional. Rule to specify how a single column is converted.
  *   `singleEntityRename` (*type:* `GoogleApi.DataMigration.V1.Model.SingleEntityRename.t`, *default:* `nil`) - Optional. Rule to specify how a single entity should be renamed.
  *   `singlePackageChange` (*type:* `GoogleApi.DataMigration.V1.Model.SinglePackageChange.t`, *default:* `nil`) - Optional. Rule to specify how a single package is converted.
  *   `sourceSqlChange` (*type:* `GoogleApi.DataMigration.V1.Model.SourceSqlChange.t`, *default:* `nil`) - Optional. Rule to change the sql code for an entity, for example, function, procedure.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Optional. The mapping rule state
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditionalColumnSetValue =>
            GoogleApi.DataMigration.V1.Model.ConditionalColumnSetValue.t() | nil,
          :convertRowidColumn => GoogleApi.DataMigration.V1.Model.ConvertRowIdToColumn.t() | nil,
          :displayName => String.t() | nil,
          :entityMove => GoogleApi.DataMigration.V1.Model.EntityMove.t() | nil,
          :filter => GoogleApi.DataMigration.V1.Model.MappingRuleFilter.t() | nil,
          :filterTableColumns => GoogleApi.DataMigration.V1.Model.FilterTableColumns.t() | nil,
          :multiColumnDataTypeChange =>
            GoogleApi.DataMigration.V1.Model.MultiColumnDatatypeChange.t() | nil,
          :multiEntityRename => GoogleApi.DataMigration.V1.Model.MultiEntityRename.t() | nil,
          :name => String.t() | nil,
          :revisionCreateTime => DateTime.t() | nil,
          :revisionId => String.t() | nil,
          :ruleOrder => String.t() | nil,
          :ruleScope => String.t() | nil,
          :setTablePrimaryKey => GoogleApi.DataMigration.V1.Model.SetTablePrimaryKey.t() | nil,
          :singleColumnChange => GoogleApi.DataMigration.V1.Model.SingleColumnChange.t() | nil,
          :singleEntityRename => GoogleApi.DataMigration.V1.Model.SingleEntityRename.t() | nil,
          :singlePackageChange => GoogleApi.DataMigration.V1.Model.SinglePackageChange.t() | nil,
          :sourceSqlChange => GoogleApi.DataMigration.V1.Model.SourceSqlChange.t() | nil,
          :state => String.t() | nil
        }

  field(:conditionalColumnSetValue, as: GoogleApi.DataMigration.V1.Model.ConditionalColumnSetValue)

  field(:convertRowidColumn, as: GoogleApi.DataMigration.V1.Model.ConvertRowIdToColumn)
  field(:displayName)
  field(:entityMove, as: GoogleApi.DataMigration.V1.Model.EntityMove)
  field(:filter, as: GoogleApi.DataMigration.V1.Model.MappingRuleFilter)
  field(:filterTableColumns, as: GoogleApi.DataMigration.V1.Model.FilterTableColumns)

  field(:multiColumnDataTypeChange, as: GoogleApi.DataMigration.V1.Model.MultiColumnDatatypeChange)

  field(:multiEntityRename, as: GoogleApi.DataMigration.V1.Model.MultiEntityRename)
  field(:name)
  field(:revisionCreateTime, as: DateTime)
  field(:revisionId)
  field(:ruleOrder)
  field(:ruleScope)
  field(:setTablePrimaryKey, as: GoogleApi.DataMigration.V1.Model.SetTablePrimaryKey)
  field(:singleColumnChange, as: GoogleApi.DataMigration.V1.Model.SingleColumnChange)
  field(:singleEntityRename, as: GoogleApi.DataMigration.V1.Model.SingleEntityRename)
  field(:singlePackageChange, as: GoogleApi.DataMigration.V1.Model.SinglePackageChange)
  field(:sourceSqlChange, as: GoogleApi.DataMigration.V1.Model.SourceSqlChange)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.MappingRule do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.MappingRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.MappingRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
