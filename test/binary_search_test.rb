require_relative '../lib/binary_search'
require 'test/unit'

class BinarySearchTest < Test::Unit::TestCase
  def test_simple
    primes = [2,  3,  5,  7,  11, 13, 17, 19, 23, 29,
              31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
              73, 79, 83, 89, 97]

    assert_equal BinarySearch.search(array: primes, target_value: 73), 20
    assert_equal BinarySearch.search(array: primes, target_value: 2), 0
    assert_equal BinarySearch.search(array: primes, target_value: 7), 3
    assert_equal BinarySearch.search(array: primes, target_value: 55), nil
    assert_equal BinarySearch.search(array: primes, target_value: -3), nil
  end
end
