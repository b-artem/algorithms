class SelectionSort
  def self.sort!(array)
    array.each_with_index do |value, index|
      minimum_index = index_of_minimum(array: array, start_index: index)
      swap(array: array, first_index: index, second_index: minimum_index)
    end
  end

  private

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
