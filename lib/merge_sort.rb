class MergeSort
  def self.sort!(array:, start_index:, finish_index:)
    if start_index < finish_index
      half = (start_index + finish_index) / 2
      sort!(array: array, start_index: start_index, finish_index: half)
      sort!(array: array, start_index: half + 1, finish_index: finish_index)
      merge(array: array, start_index: start_index, half: half, finish_index: finish_index)
    end
  end

  private

  def self.merge(array:, start_index:, half:, finish_index:)
    low_half = array[start_index..half]
    high_half = array[(half + 1)..finish_index]
    i = 0
    j = 0
    k = start_index

    while i < low_half.length && j < high_half.length
      if low_half[i] < high_half[j]
        array[k] = low_half[i]
        i += 1
      else
        array[k] = high_half[j]
        j += 1
      end
      k += 1
    end

    while i < low_half.length
      array[k] = low_half[i]
      i += 1
      k += 1
    end

    while j < high_half.length
      array[k] = high_half[j]
      j += 1
      k += 1
    end
  end
end
