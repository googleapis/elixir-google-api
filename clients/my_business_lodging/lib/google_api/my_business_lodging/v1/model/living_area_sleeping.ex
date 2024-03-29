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

defmodule GoogleApi.MyBusinessLodging.V1.Model.LivingAreaSleeping do
  @moduledoc """
  Information about sleeping features in the living area.

  ## Attributes

  *   `bedsCount` (*type:* `integer()`, *default:* `nil`) - Beds count. The number of permanent beds present in a guestroom. Does not include rollaway beds, cribs or sofabeds.
  *   `bedsCountException` (*type:* `String.t`, *default:* `nil`) - Beds count exception.
  *   `bunkBedsCount` (*type:* `integer()`, *default:* `nil`) - Bunk beds count. The number of furniture pieces in which one framed mattress is fixed directly above another by means of a physical frame. This allows one person(s) to sleep in the bottom bunk and one person(s) to sleep in the top bunk. Also known as double decker bed.
  *   `bunkBedsCountException` (*type:* `String.t`, *default:* `nil`) - Bunk beds count exception.
  *   `cribsCount` (*type:* `integer()`, *default:* `nil`) - Cribs count. The number of small beds for an infant or toddler that the guestroom can obtain. The bed is surrounded by a high railing to prevent the child from falling or climbing out of the bed
  *   `cribsCountException` (*type:* `String.t`, *default:* `nil`) - Cribs count exception.
  *   `doubleBedsCount` (*type:* `integer()`, *default:* `nil`) - Double beds count. The number of medium beds measuring 53"W x 75"L (135cm x 191cm). Also known as full size bed.
  *   `doubleBedsCountException` (*type:* `String.t`, *default:* `nil`) - Double beds count exception.
  *   `featherPillows` (*type:* `boolean()`, *default:* `nil`) - Feather pillows. The option for guests to obtain bed pillows that are stuffed with the feathers and down of ducks or geese.
  *   `featherPillowsException` (*type:* `String.t`, *default:* `nil`) - Feather pillows exception.
  *   `hypoallergenicBedding` (*type:* `boolean()`, *default:* `nil`) - Hypoallergenic bedding. Bedding such as linens, pillows, mattress covers and/or mattresses that are made of materials known to be resistant to allergens such as mold, dust and dander.
  *   `hypoallergenicBeddingException` (*type:* `String.t`, *default:* `nil`) - Hypoallergenic bedding exception.
  *   `kingBedsCount` (*type:* `integer()`, *default:* `nil`) - King beds count. The number of large beds measuring 76"W x 80"L (193cm x 102cm). Most often meant to accompany two people. Includes California king and super king.
  *   `kingBedsCountException` (*type:* `String.t`, *default:* `nil`) - King beds count exception.
  *   `memoryFoamPillows` (*type:* `boolean()`, *default:* `nil`) - Memory foam pillows. The option for guests to obtain bed pillows that are stuffed with a man-made foam that responds to body heat by conforming to the body closely, and then recovers its shape when the pillow cools down.
  *   `memoryFoamPillowsException` (*type:* `String.t`, *default:* `nil`) - Memory foam pillows exception.
  *   `otherBedsCount` (*type:* `integer()`, *default:* `nil`) - Other beds count. The number of beds that are not standard mattress and boxspring setups such as Japanese tatami mats, trundle beds, air mattresses and cots.
  *   `otherBedsCountException` (*type:* `String.t`, *default:* `nil`) - Other beds count exception.
  *   `queenBedsCount` (*type:* `integer()`, *default:* `nil`) - Queen beds count. The number of medium-large beds measuring 60"W x 80"L (152cm x 102cm).
  *   `queenBedsCountException` (*type:* `String.t`, *default:* `nil`) - Queen beds count exception.
  *   `rollAwayBedsCount` (*type:* `integer()`, *default:* `nil`) - Roll away beds count. The number of mattresses on wheeled frames that can be folded in half and rolled away for easy storage that the guestroom can obtain upon request.
  *   `rollAwayBedsCountException` (*type:* `String.t`, *default:* `nil`) - Roll away beds count exception.
  *   `singleOrTwinBedsCount` (*type:* `integer()`, *default:* `nil`) - Single or twin count beds. The number of smaller beds measuring 38"W x 75"L (97cm x 191cm) that can accommodate one adult.
  *   `singleOrTwinBedsCountException` (*type:* `String.t`, *default:* `nil`) - Single or twin beds count exception.
  *   `sofaBedsCount` (*type:* `integer()`, *default:* `nil`) - Sofa beds count. The number of specially designed sofas that can be made to serve as a bed by lowering its hinged upholstered back to horizontal position or by pulling out a concealed mattress.
  *   `sofaBedsCountException` (*type:* `String.t`, *default:* `nil`) - Sofa beds count exception.
  *   `syntheticPillows` (*type:* `boolean()`, *default:* `nil`) - Synthetic pillows. The option for guests to obtain bed pillows stuffed with polyester material crafted to reproduce the feel of a pillow stuffed with down and feathers.
  *   `syntheticPillowsException` (*type:* `String.t`, *default:* `nil`) - Synthetic pillows exception.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bedsCount => integer() | nil,
          :bedsCountException => String.t() | nil,
          :bunkBedsCount => integer() | nil,
          :bunkBedsCountException => String.t() | nil,
          :cribsCount => integer() | nil,
          :cribsCountException => String.t() | nil,
          :doubleBedsCount => integer() | nil,
          :doubleBedsCountException => String.t() | nil,
          :featherPillows => boolean() | nil,
          :featherPillowsException => String.t() | nil,
          :hypoallergenicBedding => boolean() | nil,
          :hypoallergenicBeddingException => String.t() | nil,
          :kingBedsCount => integer() | nil,
          :kingBedsCountException => String.t() | nil,
          :memoryFoamPillows => boolean() | nil,
          :memoryFoamPillowsException => String.t() | nil,
          :otherBedsCount => integer() | nil,
          :otherBedsCountException => String.t() | nil,
          :queenBedsCount => integer() | nil,
          :queenBedsCountException => String.t() | nil,
          :rollAwayBedsCount => integer() | nil,
          :rollAwayBedsCountException => String.t() | nil,
          :singleOrTwinBedsCount => integer() | nil,
          :singleOrTwinBedsCountException => String.t() | nil,
          :sofaBedsCount => integer() | nil,
          :sofaBedsCountException => String.t() | nil,
          :syntheticPillows => boolean() | nil,
          :syntheticPillowsException => String.t() | nil
        }

  field(:bedsCount)
  field(:bedsCountException)
  field(:bunkBedsCount)
  field(:bunkBedsCountException)
  field(:cribsCount)
  field(:cribsCountException)
  field(:doubleBedsCount)
  field(:doubleBedsCountException)
  field(:featherPillows)
  field(:featherPillowsException)
  field(:hypoallergenicBedding)
  field(:hypoallergenicBeddingException)
  field(:kingBedsCount)
  field(:kingBedsCountException)
  field(:memoryFoamPillows)
  field(:memoryFoamPillowsException)
  field(:otherBedsCount)
  field(:otherBedsCountException)
  field(:queenBedsCount)
  field(:queenBedsCountException)
  field(:rollAwayBedsCount)
  field(:rollAwayBedsCountException)
  field(:singleOrTwinBedsCount)
  field(:singleOrTwinBedsCountException)
  field(:sofaBedsCount)
  field(:sofaBedsCountException)
  field(:syntheticPillows)
  field(:syntheticPillowsException)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.LivingAreaSleeping do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.LivingAreaSleeping.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.LivingAreaSleeping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
