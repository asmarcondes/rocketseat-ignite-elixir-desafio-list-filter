defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "return the total of strings with odd numbers" do
      list = ["1", "3", "2", "banana", "6", "abc"]

      response = ListFilter.call(list)

      expected_response = 2

      assert response == expected_response
    end
  end
end
