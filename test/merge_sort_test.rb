require_relative '../lib/merge_sort'
require 'test/unit'

class MergeSortTest < Test::Unit::TestCase
  def test_simple
    array = [14, 7, 3, 12, 9, 11, 6, 2]
    MergeSort.new(array).sort!
    assert_equal array, [2, 3, 6, 7, 9, 11, 12, 14]

    array = [0, -3.14, 3, 5, 22, 34, -11, 6, -2]
    MergeSort.new(array).sort!
    assert_equal array, [-11, -3.14, -2, 0, 3, 5, 6, 22, 34]
  end
end
