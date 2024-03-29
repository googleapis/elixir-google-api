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

defmodule GoogleApi.ServiceControl.V2.Model.V2LogEntry do
  @moduledoc """
  An individual log entry.

  ## Attributes

  *   `httpRequest` (*type:* `GoogleApi.ServiceControl.V2.Model.V2HttpRequest.t`, *default:* `nil`) - Optional. Information about the HTTP request associated with this log entry, if applicable.
  *   `insertId` (*type:* `String.t`, *default:* `nil`) - A unique ID for the log entry used for deduplication. If omitted, the implementation will generate one based on operation_id.
  *   `labels` (*type:* `map()`, *default:* `nil`) - A set of user-defined (key, value) data that provides additional information about the log entry.
  *   `monitoredResourceLabels` (*type:* `map()`, *default:* `nil`) - A set of user-defined (key, value) data that provides additional information about the moniotored resource that the log entry belongs to.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The log to which this log entry belongs. Examples: `"syslog"`, `"book_log"`.
  *   `operation` (*type:* `GoogleApi.ServiceControl.V2.Model.V2LogEntryOperation.t`, *default:* `nil`) - Optional. Information about an operation associated with the log entry, if applicable.
  *   `protoPayload` (*type:* `map()`, *default:* `nil`) - The log entry payload, represented as a protocol buffer that is expressed as a JSON object. The only accepted type currently is AuditLog.
  *   `severity` (*type:* `String.t`, *default:* `nil`) - The severity of the log entry. The default value is `LogSeverity.DEFAULT`.
  *   `sourceLocation` (*type:* `GoogleApi.ServiceControl.V2.Model.V2LogEntrySourceLocation.t`, *default:* `nil`) - Optional. Source code location information associated with the log entry, if any.
  *   `structPayload` (*type:* `map()`, *default:* `nil`) - The log entry payload, represented as a structure that is expressed as a JSON object.
  *   `textPayload` (*type:* `String.t`, *default:* `nil`) - The log entry payload, represented as a Unicode string (UTF-8).
  *   `timestamp` (*type:* `DateTime.t`, *default:* `nil`) - The time the event described by the log entry occurred. If omitted, defaults to operation start time.
  *   `trace` (*type:* `String.t`, *default:* `nil`) - Optional. Resource name of the trace associated with the log entry, if any. If this field contains a relative resource name, you can assume the name is relative to `//tracing.googleapis.com`. Example: `projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :httpRequest => GoogleApi.ServiceControl.V2.Model.V2HttpRequest.t() | nil,
          :insertId => String.t() | nil,
          :labels => map() | nil,
          :monitoredResourceLabels => map() | nil,
          :name => String.t() | nil,
          :operation => GoogleApi.ServiceControl.V2.Model.V2LogEntryOperation.t() | nil,
          :protoPayload => map() | nil,
          :severity => String.t() | nil,
          :sourceLocation => GoogleApi.ServiceControl.V2.Model.V2LogEntrySourceLocation.t() | nil,
          :structPayload => map() | nil,
          :textPayload => String.t() | nil,
          :timestamp => DateTime.t() | nil,
          :trace => String.t() | nil
        }

  field(:httpRequest, as: GoogleApi.ServiceControl.V2.Model.V2HttpRequest)
  field(:insertId)
  field(:labels, type: :map)
  field(:monitoredResourceLabels, type: :map)
  field(:name)
  field(:operation, as: GoogleApi.ServiceControl.V2.Model.V2LogEntryOperation)
  field(:protoPayload, type: :map)
  field(:severity)
  field(:sourceLocation, as: GoogleApi.ServiceControl.V2.Model.V2LogEntrySourceLocation)
  field(:structPayload, type: :map)
  field(:textPayload)
  field(:timestamp, as: DateTime)
  field(:trace)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V2.Model.V2LogEntry do
  def decode(value, options) do
    GoogleApi.ServiceControl.V2.Model.V2LogEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V2.Model.V2LogEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
