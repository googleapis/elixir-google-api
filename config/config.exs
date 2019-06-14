# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :google_apis, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:google_apis, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"

config :google_apis,
  spec_converter: GoogleApis.Converter.ApiSpecConverter,
  hex_api_key: System.get_env("HEX_API_KEY") || "invalidkey",
  client_generator: GoogleApis.Generator.ElixirGenerator,
  swagger_cli_image: "swaggerapi/swagger-codegen-cli:v2.3.1",
  oauth_client: System.get_env("GOOGLE_CLIENT_ID"),
  oauth_secret: System.get_env("GOOGLE_CLIENT_SECRET"),
  template: System.get_env("TEMPLATE") || "gax",
  tempdir: System.get_env("TEMPDIR")
