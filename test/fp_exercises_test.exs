defmodule FpExercisesTest do
  use ExUnit.Case
  doctest FpExercises

  test "greets the world" do
    assert FpExercises.hello() == :world
  end
end
