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

defmodule GoogleApi.Logging.V2.Model.LogMetric do
  @moduledoc """
  Describes a logs-based metric. The value of the metric is the number of log entries that match a logs filter in a given time interval.Logs-based metrics can also be used to extract values from logs and create a distribution of the values. The distribution records the statistics of the extracted values along with an optional histogram of the values as specified by the bucket options.

  ## Attributes

  *   `bucketOptions` (*type:* `GoogleApi.Logging.V2.Model.BucketOptions.t`, *default:* `nil`) - Optional. The bucket_options are required when the logs-based metric is using a DISTRIBUTION value type and it describes the bucket boundaries used to create a histogram of the extracted values.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of the metric.This field may not be present for older metrics.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A description of this metric, which is used in documentation. The maximum length of the description is 8000 characters.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Optional. If set to True, then this metric is disabled and it does not generate any points.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Required. An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced_filters) which is used to match log entries. Example: "resource.type=gae_app AND severity>=ERROR" The maximum length of the filter is 20000 characters.
  *   `labelExtractors` (*type:* `map()`, *default:* `nil`) - Optional. A map from a label key string to an extractor expression which is used to extract data from a log entry field and assign as the label value. Each label key specified in the LabelDescriptor must have an associated extractor expression in this map. The syntax of the extractor expression is the same as for the value_extractor field.The extracted value is converted to the type defined in the label descriptor. If the either the extraction or the type conversion fails, the label will have a default value. The default value for a string label is an empty string, for an integer label its 0, and for a boolean label its false.Note that there are upper bounds on the maximum number of labels and the number of active time series that are allowed in a project.
  *   `metricDescriptor` (*type:* `GoogleApi.Logging.V2.Model.MetricDescriptor.t`, *default:* `nil`) - Optional. The metric descriptor associated with the logs-based metric. If unspecified, it uses a default metric descriptor with a DELTA metric kind, INT64 value type, with no labels and a unit of "1". Such a metric counts the number of log entries matching the filter expression.The name, type, and description fields in the metric_descriptor are output only, and is constructed using the name and description field in the LogMetric.To create a logs-based metric that records a distribution of log values, a DELTA metric kind with a DISTRIBUTION value type must be used along with a value_extractor expression in the LogMetric.Each label in the metric descriptor must have a matching label name as the key and an extractor expression as the value in the label_extractors map.The metric_kind and value_type fields in the metric_descriptor cannot be updated once initially configured. New labels can be added in the metric_descriptor, but existing labels cannot be modified except for their description.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The client-assigned metric identifier. Examples: "error_count", "nginx/requests".Metric identifiers are limited to 100 characters and can include only the following characters: A-Z, a-z, 0-9, and the special characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy of name pieces, and it cannot be the first character of the name.The metric identifier in this field must not be URL-encoded (https://en.wikipedia.org/wiki/Percent-encoding). However, when the metric identifier appears as the [METRIC_ID] part of a metric_name API parameter, then the metric identifier must be URL-encoded. Example: "projects/my-project/metrics/nginx%2Frequests".
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of the metric.This field may not be present for older metrics.
  *   `valueExtractor` (*type:* `String.t`, *default:* `nil`) - Optional. A value_extractor is required when using a distribution logs-based metric to extract the values to record from a log entry. Two functions are supported for value extraction: EXTRACT(field) or REGEXP_EXTRACT(field, regex). The argument are: 1. field: The name of the log entry field from which the value is to be extracted. 2. regex: A regular expression using the Google RE2 syntax (https://github.com/google/re2/wiki/Syntax) with a single capture group to extract data from the specified log entry field. The value of the field is converted to a string before applying the regex. It is an error to specify a regex that does not include exactly one capture group.The result of the extraction must be convertible to a double type, as the distribution always records double values. If either the extraction or the conversion to double fails, then those values are not recorded in the distribution.Example: REGEXP_EXTRACT(jsonPayload.request, ".*quantity=(\\d+).*")
  *   `version` (*type:* `String.t`, *default:* `nil`) - Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucketOptions => GoogleApi.Logging.V2.Model.BucketOptions.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :disabled => boolean() | nil,
          :filter => String.t() | nil,
          :labelExtractors => map() | nil,
          :metricDescriptor => GoogleApi.Logging.V2.Model.MetricDescriptor.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :valueExtractor => String.t() | nil,
          :version => String.t() | nil
        }

  field(:bucketOptions, as: GoogleApi.Logging.V2.Model.BucketOptions)
  field(:createTime, as: DateTime)
  field(:description)
  field(:disabled)
  field(:filter)
  field(:labelExtractors, type: :map)
  field(:metricDescriptor, as: GoogleApi.Logging.V2.Model.MetricDescriptor)
  field(:name)
  field(:updateTime, as: DateTime)
  field(:valueExtractor)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.LogMetric do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.LogMetric.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.LogMetric do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
