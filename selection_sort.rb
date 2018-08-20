require 'pry'

class SelectionSort
  def self.sort!(array)
    array.each_with_index do |value, index|
      minimum_index = index_of_minimum(array: array, start_index: index)
      swap(array: array, first_index: index, second_index: minimum_index)
    end
  end

  def self.index_of_minimum(array:, start_index:)
    min_value = array[start_index]
    min_index = start_index

    array[(min_index + 1)..-1].each_with_index do |value, index|
      if value < min_value
        min_index = index + start_index + 1
        min_value = value
      end
    end
    min_index
  end

  def self.swap(array:, first_index:, second_index:)
    temp = array[first_index]
    array[first_index] = array[second_index]
    array[second_index] = temp
  end
end

require 'test/unit'
extend Test::Unit::Assertions

primes = [37, 17, 29, 53, 41, 89, 31, 13, 2, 19, 47, 23,
          11, 79, 7, 83, 5, 3, 97, 43, 67, 61, 71, 73, 59]

assert_equal SelectionSort.index_of_minimum(array: primes, start_index: 0), 8
assert_equal SelectionSort.index_of_minimum(array: primes, start_index: 12), 17
assert_equal SelectionSort.index_of_minimum(array: primes, start_index: 20), 24

sorted_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
                 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

assert_equal SelectionSort.sort!(primes), sorted_primes
puts SelectionSort.sort!(primes)
