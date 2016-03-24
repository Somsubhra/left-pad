require "minitest/autorun"
require "minitest/spec"
require_relative "../lib/left-pad"

describe "left-pad" do
  it "pads out strings shorter than length" do
    LeftPad.leftpad("zomg", 10).must_equal "      zomg"
  end

  it "does not pad strings shorter than length" do
    LeftPad.leftpad("zomg", 3).must_equal "zomg"
  end

  it "allows padding with arbitrary character" do
    LeftPad.leftpad("zomg", 10, "0").must_equal "000000zomg"
  end

  it "raises error if character is zero length" do
    -> { LeftPad.leftpad("zomg", 10, "") }.must_raise(InvalidCharError)
  end

  it "raises error if character is longer than one character" do
    -> { LeftPad.leftpad("zomg", 10, "ab") }.must_raise(InvalidCharError)
  end
end
