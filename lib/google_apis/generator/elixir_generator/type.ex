defmodule GoogleApis.Generator.ElixirGenerator.Type do
  @moduledoc """
  A type holds information about a property type
  """

  @type t :: %__MODULE__{
    :name => String.t(),
    :struct => String.t(),
    :typespec => String.t()
  }

  defstruct [:name, :struct, :typespec]

  @spec from_schema(GoogleApi.Discovery.V1.Model.JsonSchema.t()) :: t
  def from_schema(%{type: "array", items: items}) do
    t = from_schema(items)
    %__MODULE__{
      name: "array",
      struct: t.struct,
      typespec: "list(#{t.typespec})"
    }
  end
  def from_schema(%{"$ref": ref}) when not is_nil(ref) do
    %__MODULE__{
      name: "object",
      typespec: "#{ref}.t"
    }
  end
  def from_schema(%{type: int}) when int in ["int", "integer"] do
    %__MODULE__{
      name: "integer",
      typespec: "integer()"
    }
  end
  def from_schema(%{type: "string", format: date_or_time}) when date_or_time in ["date", "date-time", "time"] do
    %__MODULE__{
      name: "datetime",
      typespec: "DateTime.t"
    }
  end
  def from_schema(%{type: "string"}) do
    %__MODULE__{
      name: "string",
      typespec: "String.t"
    }
  end
  def from_schema(%{type: "boolean"}) do
    %__MODULE__{
      name: "boolean",
      typespec: "boolean()"
    }
  end
  def from_schema(%{type: "number", format: "double"}) do
    %__MODULE__{
      name: "float",
      typespec: "float()"
    }
  end
  def from_schema(%{type: "number"}) do
    %__MODULE__{
      name: "number",
      typespec: "number()"
    }
  end
  def from_schema(%{type: "any"}) do
    %__MODULE__{
      name: "any",
      typespec: "any()"
    }
  end
  def from_schema(%{type: "object"}) do
    # full_name = "#{model.name}#{Macro.camelize(name)}"
    # struct = "#{token.namespace}.Model.#{full_name}"
    struct = "FIXME"
    %__MODULE__{
      name: "object",
      struct: struct,
      typespec: "#{struct}.t"
    }
  end
  def from_schema(_schema) do
    %__MODULE__{
      name: "string",
      typespec: "String.t"
    }
  end

end