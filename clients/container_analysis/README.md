# GoogleApi.ContainerAnalysis

Container Analysis API client library.

This API is a prerequisite for leveraging Artifact Analysis scanning capabilities in both Artifact Registry and with Advanced Vulnerability Insights (runtime scanning) in GKE. In addition, the Container Analysis API is an implementation of the Grafeas API, which enables storing, querying, and retrieval of critical metadata about all of your software artifacts.

## Installation

Install this package from [Hex](https://hex.pm) by adding
`google_api_container_analysis` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_container_analysis, "~> 0.29"}]
end
```

## For more information

Product documentation is available at [https://cloud.google.com/container-analysis/api/reference/rest/](https://cloud.google.com/container-analysis/api/reference/rest/).

Library reference documentation is published on Hexdocs at
[https://hexdocs.pm/google_api_container_analysis](https://hexdocs.pm/google_api_container_analysis).
