class MergeSort
  def initialize(array)
    @array = array
  end

  def sort!(array: @array, start_index: 0, finish_index: @array.size - 1)
    if start_index < finish_index
      half = (start_index + finish_index) / 2
      sort!(array: array, start_index: start_index, finish_index: half)
      sort!(array: array, start_index: half + 1, finish_index: finish_index)
      merge(array: array, start_index: start_index, half: half, finish_index: finish_index)
    end
  end

  private

  def merge(array:, start_index:, half:, finish_index:)
    initialize_merge(array: array,
                     start_index: start_index,
                     half: half,
                     finish_index: finish_index)
    compare_lowest_untaken_elements(array)
    copy_remaining_elements(array: array, array_half: @low_half, array_half_index: @low_half_index)
    copy_remaining_elements(array: array, array_half: @high_half, array_half_index: @high_half_index)
  end

  def initialize_merge(array:, start_index:, half:, finish_index:)
    @low_half = array[start_index..half]
    @high_half = array[(half + 1)..finish_index]
    @low_half_index = 0
    @high_half_index = 0
    @array_index = start_index
  end

  def compare_lowest_untaken_elements(array)
    while @low_half_index < @low_half.size && @high_half_index < @high_half.size
      if @low_half[@low_half_index] < @high_half[@high_half_index]
        array[@array_index] = @low_half[@low_half_index]
        @low_half_index += 1
      else
        array[@array_index] = @high_half[@high_half_index]
        @high_half_index += 1
      end
      @array_index += 1
    end
  end

  def copy_remaining_elements(array:, array_half:, array_half_index:)
    array_half[array_half_index..-1].each do |value|
      array[@array_index] = value
      @array_index += 1
    end
  end
end
