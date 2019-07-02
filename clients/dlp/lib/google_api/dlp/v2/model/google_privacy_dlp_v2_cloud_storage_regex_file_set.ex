# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageRegexFileSet do
  @moduledoc """
  Message representing a set of files in a Cloud Storage bucket. Regular
  expressions are used to allow fine-grained control over which files in the
  bucket to include.

  Included files are those that match at least one item in `include_regex` and
  do not match any items in `exclude_regex`. Note that a file that matches
  items from both lists will _not_ be included. For a match to occur, the
  entire file path (i.e., everything in the url after the bucket name) must
  match the regular expression.

  For example, given the input `{bucket_name: "mybucket", include_regex:
  ["directory1/.*"], exclude_regex:
  ["directory1/excluded.*"]}`:

  * `gs://mybucket/directory1/myfile` will be included
  * `gs://mybucket/directory1/directory2/myfile` will be included (`.*` matches
  across `/`)
  * `gs://mybucket/directory0/directory1/myfile` will _not_ be included (the
  full path doesn't match any items in `include_regex`)
  * `gs://mybucket/directory1/excludedfile` will _not_ be included (the path
  matches an item in `exclude_regex`)

  If `include_regex` is left empty, it will match all files by default
  (this is equivalent to setting `include_regex: [".*"]`).

  Some other common use cases:

  * `{bucket_name: "mybucket", exclude_regex: [".*\\.pdf"]}` will include all
  files in `mybucket` except for .pdf files
  * `{bucket_name: "mybucket", include_regex: ["directory/[^/]+"]}` will
  include all files directly under `gs://mybucket/directory/`, without matching
  across `/`

  ## Attributes

  *   `bucketName` (*type:* `String.t`, *default:* `nil`) - The name of a Cloud Storage bucket. Required.
  *   `excludeRegex` (*type:* `list(String.t)`, *default:* `nil`) - A list of regular expressions matching file paths to exclude. All files in
      the bucket that match at least one of these regular expressions will be
      excluded from the scan.

      Regular expressions use RE2
      [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found
      under the google/re2 repository on GitHub.
  *   `includeRegex` (*type:* `list(String.t)`, *default:* `nil`) - A list of regular expressions matching file paths to include. All files in
      the bucket that match at least one of these regular expressions will be
      included in the set of files, except for those that also match an item in
      `exclude_regex`. Leaving this field empty will match all files by default
      (this is equivalent to including `.*` in the list).

      Regular expressions use RE2
      [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found
      under the google/re2 repository on GitHub.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketName => String.t(),
          :excludeRegex => list(String.t()),
          :includeRegex => list(String.t())
        }

  field(:bucketName)
  field(:excludeRegex, type: :list)
  field(:includeRegex, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageRegexFileSet do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageRegexFileSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CloudStorageRegexFileSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
