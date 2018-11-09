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

defmodule GoogleApi.Analytics.V3.Model.Segments do
  @moduledoc """
  An segment collection lists Analytics segments that the user has access to. Each resource in the collection corresponds to a single Analytics segment.

  ## Attributes

  - items ([Segment]): A list of segments. Defaults to: `null`.
  - itemsPerPage (integer()): The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter. Defaults to: `null`.
  - kind (String.t): Collection type for segments. Defaults to: `null`.
  - nextLink (String.t): Link to next page for this segment collection. Defaults to: `null`.
  - previousLink (String.t): Link to previous page for this segment collection. Defaults to: `null`.
  - startIndex (integer()): The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter. Defaults to: `null`.
  - totalResults (integer()): The total number of results for the query, regardless of the number of results in the response. Defaults to: `null`.
  - username (String.t): Email ID of the authenticated user Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Analytics.V3.Model.Segment.t()),
          :itemsPerPage => any(),
          :kind => any(),
          :nextLink => any(),
          :previousLink => any(),
          :startIndex => any(),
          :totalResults => any(),
          :username => any()
        }

  field(:items, as: GoogleApi.Analytics.V3.Model.Segment, type: :list)
  field(:itemsPerPage)
  field(:kind)
  field(:nextLink)
  field(:previousLink)
  field(:startIndex)
  field(:totalResults)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.Segments do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.Segments.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.Segments do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
