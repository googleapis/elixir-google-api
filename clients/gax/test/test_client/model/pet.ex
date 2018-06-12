# Copyright 2018 Google LLC
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

defmodule TestClient.Model.Pet do
  use GoogleApi.Gax.ModelBase

  field(:id)
  field(:category, as: TestClient.Model.Category)
  field(:name)
  field(:tags, as: TestClient.Model.Tag, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: TestClient.Model.Pet do
  def decode(value, options) do
    TestClient.Model.Pet.decode(value, options)
  end
end
