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

defmodule GoogleApi.YouTube.V3.Model.IngestionInfo do
  @moduledoc """
  Describes information necessary for ingesting an RTMP or an HTTP stream.

  ## Attributes

  - backupIngestionAddress (String.t): The backup ingestion URL that you should use to stream video to YouTube. You have the option of simultaneously streaming the content that you are sending to the ingestionAddress to this URL. Defaults to: `null`.
  - ingestionAddress (String.t): The primary ingestion URL that you should use to stream video to YouTube. You must stream video to this URL.  Depending on which application or tool you use to encode your video stream, you may need to enter the stream URL and stream name separately or you may need to concatenate them in the following format:  STREAM_URL/STREAM_NAME Defaults to: `null`.
  - streamName (String.t): The HTTP or RTMP stream name that YouTube assigns to the video stream. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupIngestionAddress => any(),
          :ingestionAddress => any(),
          :streamName => any()
        }

  field(:backupIngestionAddress)
  field(:ingestionAddress)
  field(:streamName)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.IngestionInfo do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.IngestionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.IngestionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
