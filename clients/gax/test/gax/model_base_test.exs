defmodule Gax.ModelBaseTest do
  use ExUnit.Case
  doctest GoogleApi.Gax.ModelBase

  test "declares attributes" do
    assert %{id: nil, category: nil, name: nil, tags: nil, status: nil} = %TestClient.Model.Pet{}
  end
end
