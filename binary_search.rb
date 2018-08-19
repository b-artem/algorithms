class BinarySearch
  # Returns either the index of the location in the array,
  # or nil if the array does not contain the target_value
  def self.search(array:, target_value:)
    min = 0
    max = array.size - 1
    counter = 0

    while max >= min
      counter += 1
      guess = (min + max) / 2
      if target_value == array[guess]
        puts "Found target_value #{target_value} at step #{counter}, index #{guess}"
        return guess
      elsif array[guess] < target_value
        min = guess + 1
      else
        max = guess - 1
      end
    end
  end
end

require 'test/unit'
extend Test::Unit::Assertions

primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41,
          43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

# result = BinarySearch.search(array: primes, target_value: 73)
# puts "Found prime at index #{result}"

assert_equal BinarySearch.search(array: primes, target_value: 73), 20
assert_equal BinarySearch.search(array: primes, target_value: 2), 0
assert_equal BinarySearch.search(array: primes, target_value: 7), 3
assert_equal BinarySearch.search(array: primes, target_value: 60), nil
