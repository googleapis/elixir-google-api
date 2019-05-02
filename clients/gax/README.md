# GoogleApi.Gax

Google API Extensions for Elixir

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `google_gax` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:google_gax, "~> 0.1.1"}
  ]
end
```

## Usage

This package is used to share common code between all of the Google Elixir
client libraries.

### GoogleApi.Gax.Connection

This module is used to set up client connection options:

```elixir
defmodule MyConnection do
  use GoogleApi.Gax.Connection, scopes: ["https://example.com/read"], base_url: "https://api.example.com"
end
```

### GoogleApi.Gax.ModelBase

This module is used to provide macros for helping to define your model structs:

```elixir
defmodule Pet do
  use GoogleApi.Gax.ModelBase

  field(:id)
  field(:category, as: Category)
  field(:tags, as: Tag, type: :list)
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/google_gax](https://hexdocs.pm/google_gax).

