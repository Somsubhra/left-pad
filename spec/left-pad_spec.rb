require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/left-pad'

describe 'left-pad' do
  it 'pads out strings shorter than length' do
    'zomg'.leftpad(10).must_equal '      zomg'
  end

  it 'does not pad strings shorter than length' do
    'zomg'.leftpad(3).must_equal 'zomg'
  end

  it 'allows padding with arbitrary character' do
    'zomg'.leftpad(10, '0').must_equal '000000zomg'
  end

  it 'raises error if character is zero length' do
    -> { 'zomg'.leftpad(10, '') }.must_raise(ArgumentError)
  end

  it 'if character is longer than one character' do
    'zomg'.leftpad(10, 'ab').must_equal 'abababzomg'
  end
end
