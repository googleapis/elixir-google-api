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

  alias GoogleApis.Generator.ElixirGenerator.ResourceContext

  @spec from_schema(GoogleApi.Discovery.V1.Model.JsonSchema.t(), ResourceContext.t()) :: t
  def from_schema(%{type: "array", items: items}, context) do
    t = from_schema(items, context)
    %__MODULE__{
      name: "array",
      struct: t.struct,
      typespec: "list(#{t.typespec})"
    }
  end
  def from_schema(%{"$ref": ref}, context) when not is_nil(ref) do
    %__MODULE__{
      name: "object",
      struct: ResourceContext.struct_name(context, ref),
      typespec: ResourceContext.typespec(context, ref)
    }
  end
  def from_schema(%{type: int}, _context) when int in ["int", "integer"] do
    %__MODULE__{
      name: "integer",
      typespec: "integer()"
    }
  end
  def from_schema(%{type: "string", format: date_or_time}, _context) when date_or_time in ["date", "date-time", "time"] do
    %__MODULE__{
      name: "datetime",
      typespec: "DateTime.t"
    }
  end
  def from_schema(%{type: "string"}, _context) do
    %__MODULE__{
      name: "string",
      typespec: "String.t"
    }
  end
  def from_schema(%{type: "boolean"}, _context) do
    %__MODULE__{
      name: "boolean",
      typespec: "boolean()"
    }
  end
  def from_schema(%{type: "number", format: "double"}, _context) do
    %__MODULE__{
      name: "float",
      typespec: "float()"
    }
  end
  def from_schema(%{type: "number"}, _context) do
    %__MODULE__{
      name: "number",
      typespec: "number()"
    }
  end
  def from_schema(%{type: "any"}, _context) do
    %__MODULE__{
      name: "any",
      typespec: "any()"
    }
  end
  def from_schema(%{type: "object"}, context) do
    %__MODULE__{
      name: "object",
      struct: ResourceContext.struct_name(context),
      typespec: ResourceContext.typespec(context)
    }
  end
  def from_schema(_schema) do
    %__MODULE__{
      name: "string",
      typespec: "String.t"
    }
  end

end