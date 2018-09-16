require_relative '../lib/quick_sort'
require 'test/unit'

class QuickSortTest < Test::Unit::TestCase
  def test_simple
    array = [9, 7, 5, 11, 12, 2, 14, 3, 10, 6]
    QuickSort.sort!(array: array, start_index: 0, finish_index: array.size - 1)
    assert_equal array, [2, 3, 5, 6, 7, 9, 10, 11, 12, 14]

    array = [-9.3, 6, -5, 0, 12, 0, 14, 8, 11, 4]
    QuickSort.sort!(array: array, start_index: 0, finish_index: array.size - 1)
    assert_equal array, [-9.3, -5, 0, 0, 4, 6, 8, 11, 12, 14]
  end
end
