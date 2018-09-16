require_relative '../lib/insertion_sort'
require 'test/unit'

class InsertionSortTest < Test::Unit::TestCase
  def test_simple
    array = [22, 11, 99, 88, 9, 7, 42]
    assert_equal InsertionSort.sort!(array), [7, 9, 11, 22, 42, 88, 99]

    array = [-3, 4.98, 0, -2, 1, 1, 5]
    assert_equal InsertionSort.sort!(array), [-3, -2, 0, 1, 1, 4.98, 5]
  end
end
