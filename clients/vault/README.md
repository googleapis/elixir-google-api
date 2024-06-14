# GoogleApi.Vault

Google Vault API client library.

Retention and eDiscovery for Google Workspace. To work with Vault resources, the account must have the [required Vault privileges](https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege. For example, to download an export, an account needs the **Manage Exports** privilege and the matter shared with them. 

## Installation

Install this package from [Hex](https://hex.pm) by adding
`google_api_vault` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_vault, "~> 0.22"}]
end
```

## For more information

Product documentation is available at [https://developers.google.com/vault](https://developers.google.com/vault).

Library reference documentation is published on Hexdocs at
[https://hexdocs.pm/google_api_vault](https://hexdocs.pm/google_api_vault).
