class BinarySearch
  def self.search(array:, target_value:)
    min = 0
    max = array.size - 1

    while max >= min
      guess = (min + max) / 2
      if target_value == array[guess]
        return guess
      elsif array[guess] < target_value
        min = guess + 1
      else
        max = guess - 1
      end
    end
  end
end
