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
