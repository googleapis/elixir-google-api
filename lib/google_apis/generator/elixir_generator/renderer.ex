defmodule GoogleApis.Generator.ElixirGenerator.Renderer do
  @moduledoc """
  Renderer for building output code from templates.
  """

  require EEx

  EEx.function_from_file(:def, :model, Path.expand("./template/elixir/model.ex.eex"), [
    :model,
    :namespace
  ])

  EEx.function_from_file(:def, :api, Path.expand("./template/elixir/api.ex.eex"), [
    :api,
    :namespace
  ])
end
