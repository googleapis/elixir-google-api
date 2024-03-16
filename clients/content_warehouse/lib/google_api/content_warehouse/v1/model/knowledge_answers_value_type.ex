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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersValueType do
  @moduledoc """
  Specifies the allowed type(s) that a value can have, e.g. for a Slot. For example, having both entity_type and string_type present in a ValueType field of a Slot means that the Slot can take _either_ an an EntityType _or_ StringType as a value, and nothing else. It may be helpful to think of this proto as being called something like AllAllowedValueTypes. To enforce a component-specific contract (go/contract-based-conformance) for allowed type(s), we add a repeated field view_specific_${x} for the type ${x}. For example, if we want a slot that can hold any type by default, but can only hold an integer when checking against the P2_LWA contract, then the following should be added to MeaningCatalog: slot { name: "integer_only_slot" type { // The default view has no sub_type or other options. number_type {} // The P2_LWA view specifies INTEGER sub_type. view_specific_number_types { sub_type: INTEGER component_specific_contracts: P2_LWA } } } See go/view-based-options-for-valuetype for more information. Next tag id: 26 LINT.IfChange

  ## Attributes

  *   `anyType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersAnyType.t`, *default:* `nil`) - This type is meant to accept "any" type and allow any and all composition. As such, it should not be used for any composition algorithms, e.g. in Loose Parser. See more detailed discussion at go/any-type-in-mrf. This type may appear on an answer_type, implying that the output of that Meaning Schema is allowed to nest in any other slot. However, support for this is NOT implemented in Loose Parser due to risk of overcomposition, but the MRF Conformance checker allows for this. If you are thinking of using this, please contact mrf-team@.
  *   `attributeType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersAttributeType.t`, *default:* `nil`) - 
  *   `booleanType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersBooleanType.t`, *default:* `nil`) - 
  *   `collectionType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCollectionType.t`, *default:* `nil`) - 
  *   `compoundType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCompoundType.t`, *default:* `nil`) - 
  *   `dateType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDateType.t`, *default:* `nil`) - 
  *   `dependencyType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDependencyType.t`, *default:* `nil`) - Used for configuring dynamic types to allow for type transparency. See: go/type-dependencies
  *   `durationType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDurationType.t`, *default:* `nil`) - 
  *   `entityType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersEntityType.t`, *default:* `nil`) - 
  *   `inputCompositionConfig` (*type:* `String.t`, *default:* `nil`) - When specified on a slot's type, restricts composition based on the enum value. This does not mean anything when the value type is to be interpreted as an output_type.
  *   `measurementType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMeasurementType.t`, *default:* `nil`) - 
  *   `normalizedStringType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNormalizedStringType.t`, *default:* `nil`) - Note that normalized_string_type is NOT supported in the loose parser. A slot with this type will cause the intent to not be parsed.
  *   `numberType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNumberType.t`, *default:* `nil`) - 
  *   `opaqueType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersOpaqueType.t`, *default:* `nil`) - 
  *   `plexityRequirement` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersPlexityRequirement.t`, *default:* `nil`) - 
  *   `polarQuestionType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersPolarQuestionType.t`, *default:* `nil`) - 
  *   `semanticType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSemanticType.t`, *default:* `nil`) - 
  *   `stateOfAffairsType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersStateOfAffairsType.t`, *default:* `nil`) - 
  *   `stringType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersStringType.t`, *default:* `nil`) - 
  *   `timezoneType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersTimeZoneType.t`, *default:* `nil`) - 
  *   `trackingNumberType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersTrackingNumberType.t`, *default:* `nil`) - 
  *   `viewSpecificNumberTypes` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNumberType.t)`, *default:* `nil`) - LINT.IfChange Contract-specific typing (go/view-based-options-for-valuetype). NOTE: To facilitate writing macros for view-specific filtering, all view-specific fields should be named with the format "view_specific_${singular_field}s" -- e.g., for the singular field |number_type|, the view-specific repeated field is |view_specific_number_types|. LINT.ThenChange( //depot/google3/nlp/meaning/remodel/meaning_remodeling_utils.cc:ViewSpecificTypes, //depot/google3/nlp/meaning/analyzer/checks/component_specific_contracts_checks.cc:ViewSpecificTypes)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :anyType => GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersAnyType.t() | nil,
          :attributeType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersAttributeType.t() | nil,
          :booleanType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersBooleanType.t() | nil,
          :collectionType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCollectionType.t() | nil,
          :compoundType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCompoundType.t() | nil,
          :dateType => GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDateType.t() | nil,
          :dependencyType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDependencyType.t() | nil,
          :durationType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDurationType.t() | nil,
          :entityType => GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersEntityType.t() | nil,
          :inputCompositionConfig => String.t() | nil,
          :measurementType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMeasurementType.t() | nil,
          :normalizedStringType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNormalizedStringType.t() | nil,
          :numberType => GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNumberType.t() | nil,
          :opaqueType => GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersOpaqueType.t() | nil,
          :plexityRequirement =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersPlexityRequirement.t() | nil,
          :polarQuestionType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersPolarQuestionType.t() | nil,
          :semanticType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSemanticType.t() | nil,
          :stateOfAffairsType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersStateOfAffairsType.t() | nil,
          :stringType => GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersStringType.t() | nil,
          :timezoneType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersTimeZoneType.t() | nil,
          :trackingNumberType =>
            GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersTrackingNumberType.t() | nil,
          :viewSpecificNumberTypes =>
            list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNumberType.t()) | nil
        }

  field(:anyType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersAnyType)
  field(:attributeType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersAttributeType)
  field(:booleanType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersBooleanType)
  field(:collectionType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCollectionType)
  field(:compoundType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersCompoundType)
  field(:dateType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDateType)
  field(:dependencyType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDependencyType)
  field(:durationType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersDurationType)
  field(:entityType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersEntityType)
  field(:inputCompositionConfig)
  field(:measurementType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersMeasurementType)

  field(:normalizedStringType,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNormalizedStringType
  )

  field(:numberType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNumberType)
  field(:opaqueType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersOpaqueType)

  field(:plexityRequirement,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersPlexityRequirement
  )

  field(:polarQuestionType,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersPolarQuestionType
  )

  field(:semanticType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersSemanticType)

  field(:stateOfAffairsType,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersStateOfAffairsType
  )

  field(:stringType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersStringType)
  field(:timezoneType, as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersTimeZoneType)

  field(:trackingNumberType,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersTrackingNumberType
  )

  field(:viewSpecificNumberTypes,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersNumberType,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersValueType do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersValueType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersValueType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end