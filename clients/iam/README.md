# GoogleApi.IAM

Identity and Access Management (IAM) API client library.

Manages identity and access control for Google Cloud resources, including the creation of service accounts, which you can use to authenticate to Google and make API calls. Enabling this API also enables the IAM Service Account Credentials API (iamcredentials.googleapis.com). However, disabling this API doesn't disable the IAM Service Account Credentials API. 

## Installation

Install this package from [Hex](https://hex.pm) by adding
`google_api_iam` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_iam, "~> 0.43"}]
end
```

## For more information

Product documentation is available at [https://cloud.google.com/iam/](https://cloud.google.com/iam/).

Library reference documentation is published on Hexdocs at
[https://hexdocs.pm/google_api_iam](https://hexdocs.pm/google_api_iam).
