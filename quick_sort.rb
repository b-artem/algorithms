class QuickSort
  def self.sort!(array:, start_index:, finish_index:)
    if start_index < finish_index
      pivot_index = partition(array: array, start_index: start_index, finish_index: finish_index)
      sort!(array: array, start_index: start_index, finish_index: pivot_index - 1)
      sort!(array: array, start_index: pivot_index + 1, finish_index: finish_index)
    end
  end

  private

  def self.partition(array:, start_index:, finish_index:)
    pivot_index = start_index
    array[start_index..(finish_index - 1)].each_with_index do |value, index|
      if value <= array[finish_index]
        swap(array: array, first_index: index + start_index, second_index: pivot_index)
        pivot_index += 1
      end
    end
    swap(array: array, first_index: finish_index, second_index: pivot_index)
    pivot_index
  end

  def self.swap(array:, first_index:, second_index:)
    temp = array[first_index]
    array[first_index] = array[second_index]
    array[second_index] = temp
  end
end

require 'test/unit'
extend Test::Unit::Assertions

array = [9, 7, 5, 11, 12, 2, 14, 3, 10, 6]
QuickSort.sort!(array: array, start_index: 0, finish_index: array.length - 1)
puts "Array after sorting: #{array}"
assert_equal array, [2, 3, 5, 6, 7, 9, 10, 11, 12, 14]

array = [-9.3, 6, -5, 0, 12, 0, 14, 8, 11, 4]
QuickSort.sort!(array: array, start_index: 0, finish_index: array.length - 1)
puts "Array after sorting: #{array}"
assert_equal array, [-9.3, -5, 0, 0, 4, 6, 8, 11, 12, 14]
