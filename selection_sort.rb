# require 'pry'

class SelectionSort
  def self.index_of_minimum(array:, start_index:)
    min_value = array[start_index]
    min_index = start_index

    array[(min_index + 1)..-1].each do 
    # binding.pry
  end

end

require 'test/unit'
extend Test::Unit::Assertions

primes = [37, 17, 29, 53, 41, 89, 31, 13, 2, 19, 47, 23,
          11, 79, 7, 83, 5, 3, 97, 43, 67, 61, 71, 73, 59]

# result = BinarySearch.search(array: primes, target_value: 73)
# puts "Found prime at index #{result}"

SelectionSort.index_of_minimum(array: primes, start_index: 13)


# assert_equal SelectionSort.search(array: primes, target_value: 73), 20
# assert_equal SelectionSort.search(array: primes, target_value: 2), 0
# assert_equal SelectionSort.search(array: primes, target_value: 7), 3
# assert_equal SelectionSort.search(array: primes, target_value: 60), nil
