module Enumerable
  def my_each_with_index
    return to_enum(:my_each_with_index) unless block_given?

    index = 0
    my_each do |element|
      yield(element, index)
      index += 1
    end
  end

  def my_select
    return to_enum(:my_select) unless block_given?

    selected_values = []
    my_each do |element|
      selected_values << element if yield(element)
    end
    selected_values
  end

  def my_all?
    my_each do |element|
      return false unless yield(element)
    end
    true
  end

  def my_any?
    my_each do |element|
      return true if yield(element)
    end
    false
  end

  def my_none?
    my_each do |element|
      return false if yield(element)
    end
    true
  end

  def my_count
    return size unless block_given?

    count = 0
    my_each do |element|
      count += 1 if yield(element)
    end
    count
  end

  def my_map
    return to_enum(:my_map) unless block_given?

    result = []
    my_each do |element|
      result << yield(element)
    end
    result
  end

  def my_inject(initial_value)
    accumulator = initial_value
    my_each do |element|
      accumulator = yield(accumulator, element)
    end
    accumulator
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    return to_enum(:my_each) unless block_given?

    for item in self do
      yield(item)
    end
  end
end
