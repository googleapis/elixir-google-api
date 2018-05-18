defmodule GaxTest do
  use ExUnit.Case
  doctest Gax

  test "greets the world" do
    assert Gax.hello() == :world
  end
end
