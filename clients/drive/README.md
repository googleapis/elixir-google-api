# GoogleApi.Drive.V3

Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `google_api_drive` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:google_api_drive, "~> 0.0.1"}]
end
```

## Authentication

This API requires OAuth 2.0 to authorize requests. All requests to the Drive API
must be authorized by an authenticated user.

The details of the authorization process, or "flow," for OAuth 2.0 vary somewhat
depending on what kind of application you're writing.

See [Drive instructions](https://developers.google.com/drive/v3/web/about-auth).

## Usage

### Listing files

```elixir
conn = GoogleApi.Drive.V3.Connection.new("YOUR-API-TOKEN-HERE")
{:ok, file_list} = GoogleApi.Drive.V3.Api.Files.drive_files_list(conn)
Enum.each(file_list.files, &IO.inspect/1)
```

### Uploading a file

```elixir
conn = GoogleApi.Drive.V3.Connection.new("YOUR-API-TOKEN-HERE")
{:ok, file} =
  Files.drive_files_create_simple(
    conn,
    "multipart",
    %File{
      name: "file.txt"
    },
    "path/to/file.txt"
  )
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/google_api_drive](https://hexdocs.pm/google_api_drive).
