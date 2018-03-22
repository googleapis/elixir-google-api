defmodule GoogleApiFirestoreTest do
  use ExUnit.Case
  doctest GoogleApiFirestore

  test "greets the world" do
    assert GoogleApiFirestore.hello() == :world
  end

  test "returns the version as defined in mix" do
    assert GoogleApiFirestore.version() == Mix.Project.config[:version]
  end
end
