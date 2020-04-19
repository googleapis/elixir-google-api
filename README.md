# GoogleApis

This repository contains all the client libraries to interact with Google APIs.
These client libraries are created under `clients/` and each should contain its
own README.

The main folder contains the code necessary to generate these client libraries.

**NOTE: These generated clients are under development and should be considered
experimental!**


## Usage

### Installation

All available Google API clients can be found [on hex.pm][hex_pm]. Add a client
to your project's `mix.exs` under `deps`:

```ex
defmodule YourApplication.Mixfile do
  use Mix.Project
  #...

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:google_api_storage, "~> 0.19.0"},
      {:goth, "~> 1.2.0"}
    ]
  end
end
```

> Note the [goth][goth] package, which handles Google Authentication, is also
> required.

Next, run `mix deps.get` to pull down the dependencies:

```sh
$ mix deps.get
```

Now you can make an API call by obtaining an access token and using the
generated modules.

### Obtaining an Access Token

#### Service Accounts

Authentication is typically done through [Application Default Credentials][adc]
which means you do not have to change the code to authenticate as long as
your environment has credentials. Start by creating a
[Service Account key file][service_account_key_file]. This file can be used to
authenticate to Google Cloud Platform services from any environment. To use
the file, set the `GOOGLE_APPLICATION_CREDENTIALS` environment variable to
the path to the key file, for example:

    export GOOGLE_APPLICATION_CREDENTIALS=/path/to/service_account.json

If you are deploying to App Engine, Compute Engine, or Container Engine, your
credentials will be available by default.

#### OAuth 2.0

Many APIs (like Drive, Gmail, and YouTube) require you to use OAuth 2.0 to
authorize requests on behalf of an authenticated user. For an example using
the [oauth2-library][oauth2-library], see the [auth sample][auth-sample].

We've also provided a mix task to fetch a token for testing. The following
command requests a token for the Drive full access scope:

```bash
$ export GOOGLE_CLIENT_ID=[YOUR-OAUTH-CLIENT-ID]
$ export GOOGLE_CLIENT_SECRET=[YOUR-OAUTH-CLIENT-SECRET]
$ mix google_apis.auth https://www.googleapis.com/auth/drive
Open the following link in your brower:
https://accounts.google.com/o/oauth2/auth?[some-long-url]
Enter verification code:
```

Once you've logged in and authorized the application, copy the code param from
the web browser's url and paste into the console. The script will then fetch
your OAuth access token.

```bash
Token: [your-oauth-token]
```

You can then use this token for your testing:

```elixir
connection = GoogleApi.Drive.V3.Connection.new("your-oauth-token")
{:ok, file_list} = GoogleApi.Drive.V3.Api.Files.drive_files_list(conn)
```

### Making a Request

```ex
# Obtain an access token using goth
{:ok, token} = Goth.Token.for_scope("https://www.googleapis.com/auth/cloud-platform")
conn = GoogleApi.Storage.V1.Connection.new(token.token)

# Call the Storage V1 API (for example) to list buckets
{:ok, response} = GoogleApi.Storage.V1.Api.Buckets.storage_buckets_list(conn, project_id)

# Print the response
Enum.each(response.items, &IO.puts(&1.id))
```

### What's Next?

Take a look at our [elixir-samples repository][elixir-samples] repository for
examples of calling individual APIs and a getting started tutorial app.

## Generating Clients

### Setup

1. Install nodejs if not already installed.
1. Install nodejs dependencies:

```bash
$> npm install
```

1. Install elixir dependencies:

```bash
$> mix deps.get
```

This project provides 4 mix tasks to componentize the build process:

1. `mix google_apis.discover` - Select which APIs to build
1. `mix google_apis.fetch` - Download the selected API specifications in Google
   discovery format
1. `mix google_apis.convert` - Convert the selected API specifications from
   Google discovery format to OpenApi v2 (formerly known as Swagger)
1. `mix google_apis.build` - Generate API clients

### Selecting APIs

The `mix google_apis.discover` task queries Google's API [discovery
directory][discovery-directory]. The contents of this file are downloaded to a
staging file (`api-candidate.json`) under the config directory.

You can change the name of the file by providing a filename argument to the mix
task:

```bash
$> mix google_apis.discover foo.json
```

Note that this task is not one that should be run often, as the
`config/api.json` is considered configuration regarding which APIs to generate.

### Fetching API Specifications

The `mix google_apis.fetch` task iterates through the list of API
specifications in the `config/api.json` file and downloads the specification to
the `specifications/gdd` folder with the format of `<name>-<version>.json`.

You can limit which APIs to fetch by providing an API name argument to the mix
task:

```bash
$> mix google_apis.fetch CloudTrace
```

### Converting API Specifications

The next step is to convert the API specifications from Google's discovery
format to OpenApi format.  The `mix google_apis.convert` task iterates through
the list of API specifications in the `config/api.json` file and converts each
found Google discovery specification to an equivalent* OpenApi version.

You can configure the converter by modifying the `config/config.exs` setting:

```elixir
config :google_apis, spec_converter: <some converter implementation>
```

The default converter uses the node package
[api-spec-converter][api-spec-converter].  You can also limit which APIs to
convert by providing an API name argument to the mix task:

```bash
$> mix google_apis.convert CloudTrace
```

### Building API Clients

The `mix google_apis.build` task iterates through the list of API
specifications in the `config/api.json` file and generates an Elixir client
library in the `clients` folder.

You can configure the converter by modifying the `config/config.exs` setting:

```elixir
config :google_apis, client_generator: GoogleApis.Generator.SwaggerCli
```

The default generator uses Docker and an image based off the [swagger-codegen
project][swagger-codegen]. You can further configure this converter by
modifying the `config/config.exs` setting:

```elixir
config :google_apis, swagger_cli_image: "swagger-cli"
```

You can also limit which APIs to generate by providing an API name argument to
the mix task:

```bash
$> mix google_apis.generate CloudTrace
```

## Contributing

Contributions to this library are always welcome and highly encouraged.

See [CONTRIBUTING](CONTRIBUTING.md) for more information on how to get started.

## License

Apache 2.0 - See [LICENSE](LICENSE) for more information.

## Disclaimer

This is not an officially supported Google product.

[adc]: https://cloud.google.com/docs/authentication#getting_credentials_for_server-centric_flow
[service_account_key_file]: https://developers.google.com/identity/protocols/OAuth2ServiceAccount#creatinganaccount
[discovery-directory]: https://www.googleapis.com/discovery/v1/apis
[api-spec-converter]: https://github.com/LucyBot-Inc/api-spec-converter
[swagger-codegen]: https://github.com/swagger-api/swagger-codegen
[hex_pm]: https://hex.pm/users/google-cloud
[goth]: https://hex.pm/packages/goth
[elixir-samples]: https://github.com/GoogleCloudPlatform/elixir-samples
[oauth2-library]: https://github.com/scrogson/oauth2
[auth-sample]: https://github.com/GoogleCloudPlatform/elixir-samples/tree/master/auth
