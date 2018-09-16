require_relative '../lib/selection_sort'
require 'test/unit'

class SelectionSortTest < Test::Unit::TestCase
  def test_simple
    primes = [2,  3,  5,  7,  11, 13, 17, 19, 23, 29,
              31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
              73, 79, 83, 89, 97]

    sorted_primes = [2,  3,  5,  7,  11, 13, 17, 19, 23, 29,
                     31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
                     73, 79, 83, 89, 97]

    assert_equal SelectionSort.sort!(primes), sorted_primes
  end
end
