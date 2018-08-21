require 'pry'

class InsertionSort
  def self.sort!(array)
    array[1..-1].each_with_index do |value, index|
      insert(array: array, right_index: index, value: value)
    end
    array
  end

  private

  def self.insert(array:, right_index:, value:)
    current_index = right_index
    while current_index >= 0 && array[current_index] > value
      array[current_index + 1] = array[current_index]
      current_index -= 1
    end
    array[current_index + 1] = value
    array
  end
end

require 'test/unit'
extend Test::Unit::Assertions

array = [3, 5, 7, 11, 13, 2, 9, 6]

assert_equal InsertionSort.insert(array: array, right_index: 4, value: 2), [2, 3, 5, 7, 11, 13, 9, 6]
assert_equal InsertionSort.insert(array: array, right_index: 5, value: 9), [2, 3, 5, 7, 9, 11, 13, 6]
assert_equal InsertionSort.insert(array: array, right_index: 6, value: 6), [2, 3, 5, 6, 7, 9, 11, 13]

array = [22, 11, 99, 88, 9, 7, 42]
assert_equal InsertionSort.sort!(array), [7, 9, 11, 22, 42, 88, 99]

array = [-3, 4.98, 0, -2, 1, 1, 5]
assert_equal InsertionSort.sort!(array), [-3, -2, 0, 1, 1, 4.98, 5]
