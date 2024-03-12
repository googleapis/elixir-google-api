# GoogleApi.AccessContextManager

Access Context Manager API client library.

An API for setting attribute based access control to requests to Google Cloud services. *Warning:* Do not mix *v1alpha* and *v1* API usage in the same access policy. The v1alpha API supports new Access Context Manager features, which may have different attributes or behaviors that are not supported by v1. The practice of mixed API usage within a policy may result in the inability to update that policy, including any access levels or service perimeters belonging to it. It is not recommended to use both v1 and v1alpha for modifying policies with critical service perimeters. Modifications using v1alpha should be limited to policies with non-production/non-critical service perimeters.

## Installation

Install this package from [Hex](https://hex.pm) by adding
`google_api_access_context_manager` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_access_context_manager, "~> 0.19"}]
end
```

## For more information

Product documentation is available at [https://cloud.google.com/access-context-manager/docs/reference/rest/](https://cloud.google.com/access-context-manager/docs/reference/rest/).

Library reference documentation is published on Hexdocs at
[https://hexdocs.pm/google_api_access_context_manager](https://hexdocs.pm/google_api_access_context_manager).
