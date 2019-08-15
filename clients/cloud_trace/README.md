# GoogleApi.CloudTrace

Client library for Stackdriver Trace API from Google.

Sends application trace data to Stackdriver Trace for viewing. Trace data is collected for all App Engine applications by default. Trace data from other applications can be provided using this API. This library is used to interact with the Trace API directly. If you are looking to instrument your application for Stackdriver Trace, we recommend using OpenCensus.


## Installation

Install this package from [Hex](https://hex.pm) by adding
`google_api_cloud_trace` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_cloud_trace, "~> 0.11"}]
end
```

## For more information

Product documentation is available at [https://cloud.google.com/trace](https://cloud.google.com/trace).

Library reference documentation is published on Hexdocs at
[https://hexdocs.pm/google_api_cloud_trace](https://hexdocs.pm/google_api_cloud_trace).
