defmodule DivModuleTest do
  use ExUnit.Case
  doctest DivModule

  test "division" do
    {:ok, result} = DivModule.div(2, 1)
    assert result == 2.0
  end
  test "division by zero" do
    {:error, err} = DivModule.div(1, 0)
    assert err == "attempt at division by zero"
  end
end
