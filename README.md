# GoogleApis

This repository contains all the client libraries to interact with Google APIs.
These client libraries are created under `clients/` and each should contain its
own README.

The main folder contains the code necessary to generate these client libraries.

**NOTE: These generated clients are under development and should be considered
experimental!**

## Setup

1. Install nodejs if not already installed.
1. Install nodejs dependencies:

```bash
$> npm install
```

1. Install elixir dependencies:

```bash
$> mix deps.get
```

## Generating Clients

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

[discovery-directory]: https://www.googleapis.com/discovery/v1/apis
[api-spec-converter]: https://github.com/LucyBot-Inc/api-spec-converter
[swagger-codegen]: https://github.com/swagger-api/swagger-codegen
