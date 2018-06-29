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

defmodule GoogleApi.Logging.V2.Model.LogEntry do
  @moduledoc """
  An individual entry in a log.

  ## Attributes

  - httpRequest (HttpRequest): Optional. Information about the HTTP request associated with this log entry, if applicable. Defaults to: `null`.
  - insertId (String.t): Optional. A unique identifier for the log entry. If you provide a value, then Stackdriver Logging considers other log entries in the same project, with the same timestamp, and with the same insert_id to be duplicates which can be removed. If omitted in new log entries, then Stackdriver Logging assigns its own unique identifier. The insert_id is also used to order log entries that have the same timestamp value. Defaults to: `null`.
  - jsonPayload (%{optional(String.t) &#x3D;&gt; String.t}): The log entry payload, represented as a structure that is expressed as a JSON object. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Optional. A set of user-defined (key, value) data that provides additional information about the log entry. Defaults to: `null`.
  - logName (String.t): Required. The resource name of the log to which this log entry belongs: \&quot;projects/[PROJECT_ID]/logs/[LOG_ID]\&quot; \&quot;organizations/[ORGANIZATION_ID]/logs/[LOG_ID]\&quot; \&quot;billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]\&quot; \&quot;folders/[FOLDER_ID]/logs/[LOG_ID]\&quot; A project number may optionally be used in place of PROJECT_ID. The  project number is translated to its corresponding PROJECT_ID internally  and the log_name field will contain PROJECT_ID in queries and exports.[LOG_ID] must be URL-encoded within log_name. Example: \&quot;organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity\&quot;. [LOG_ID] must be less than 512 characters long and can only include the following characters: upper and lower case alphanumeric characters, forward-slash, underscore, hyphen, and period.For backward compatibility, if log_name begins with a forward-slash, such as /projects/..., then the log entry is ingested as usual but the forward-slash is removed. Listing the log entry will not show the leading slash and filtering for a log name with a leading slash will never return any results. Defaults to: `null`.
  - metadata (MonitoredResourceMetadata): Output only. Additional metadata about the monitored resource. Only k8s_container, k8s_pod, and k8s_node MonitoredResources have this field populated. Defaults to: `null`.
  - operation (LogEntryOperation): Optional. Information about an operation associated with the log entry, if applicable. Defaults to: `null`.
  - protoPayload (%{optional(String.t) &#x3D;&gt; String.t}): The log entry payload, represented as a protocol buffer. Some Google Cloud Platform services use this field for their log entry payloads. Defaults to: `null`.
  - receiveTimestamp (DateTime.t): Output only. The time the log entry was received by Stackdriver Logging. Defaults to: `null`.
  - resource (MonitoredResource): Required. The primary monitored resource associated with this log entry. Example: a log entry that reports a database error would be associated with the monitored resource designating the particular database that reported the error. Defaults to: `null`.
  - severity (String.t): Optional. The severity of the log entry. The default value is LogSeverity.DEFAULT. Defaults to: `null`.
    - Enum - one of [DEFAULT, DEBUG, INFO, NOTICE, WARNING, ERROR, CRITICAL, ALERT, EMERGENCY]
  - sourceLocation (LogEntrySourceLocation): Optional. Source code location information associated with the log entry, if any. Defaults to: `null`.
  - spanId (String.t): Optional. The span ID within the trace associated with the log entry. For Stackdriver Trace spans, this is the same format that the Stackdriver Trace API v2 uses: a 16-character hexadecimal encoding of an 8-byte array, such as &lt;code&gt;\&quot;000000000000004a\&quot;&lt;/code&gt;. Defaults to: `null`.
  - textPayload (String.t): The log entry payload, represented as a Unicode string (UTF-8). Defaults to: `null`.
  - timestamp (DateTime.t): Optional. The time the event described by the log entry occurred. This time is used to compute the log entry&#39;s age and to enforce the logs retention period. If this field is omitted in a new log entry, then Stackdriver Logging assigns it the current time. Timestamps have nanosecond accuracy, but trailing zeros in the fractional seconds might be omitted when the timestamp is displayed.Incoming log entries should have timestamps that are no more than the logs retention period in the past, and no more than 24 hours in the future. Log entries outside those time boundaries will not be available when calling entries.list, but those log entries can still be exported with LogSinks. Defaults to: `null`.
  - trace (String.t): Optional. Resource name of the trace associated with the log entry, if any. If it contains a relative resource name, the name is assumed to be relative to //tracing.googleapis.com. Example: projects/my-projectid/traces/06796866738c859f2f19b7cfb3214824 Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :httpRequest => GoogleApi.Logging.V2.Model.HttpRequest.t(),
          :insertId => any(),
          :jsonPayload => map(),
          :labels => map(),
          :logName => any(),
          :metadata => GoogleApi.Logging.V2.Model.MonitoredResourceMetadata.t(),
          :operation => GoogleApi.Logging.V2.Model.LogEntryOperation.t(),
          :protoPayload => map(),
          :receiveTimestamp => DateTime.t(),
          :resource => GoogleApi.Logging.V2.Model.MonitoredResource.t(),
          :severity => any(),
          :sourceLocation => GoogleApi.Logging.V2.Model.LogEntrySourceLocation.t(),
          :spanId => any(),
          :textPayload => any(),
          :timestamp => DateTime.t(),
          :trace => any()
        }

  field(:httpRequest, as: GoogleApi.Logging.V2.Model.HttpRequest)
  field(:insertId)
  field(:jsonPayload, type: :map)
  field(:labels, type: :map)
  field(:logName)
  field(:metadata, as: GoogleApi.Logging.V2.Model.MonitoredResourceMetadata)
  field(:operation, as: GoogleApi.Logging.V2.Model.LogEntryOperation)
  field(:protoPayload, type: :map)
  field(:receiveTimestamp, as: DateTime)
  field(:resource, as: GoogleApi.Logging.V2.Model.MonitoredResource)
  field(:severity)
  field(:sourceLocation, as: GoogleApi.Logging.V2.Model.LogEntrySourceLocation)
  field(:spanId)
  field(:textPayload)
  field(:timestamp, as: DateTime)
  field(:trace)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.LogEntry do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.LogEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.LogEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
