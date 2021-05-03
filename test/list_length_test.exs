defmodule ListLengthTest do
  use ExUnit.Case
  doctest ListLength

  describe "call/1" do
    test "Returns how many elements are in a list." do
      list = [1, 2, 3, 4, 5]

      response = ListLength.call(list)

      expected_response = 5

      assert response == expected_response
    end
  end
end
