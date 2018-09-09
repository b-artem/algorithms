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
