module Enumerable
  def my_each
    count = 0

    while count < self.length
      yield(self[count])
      count += 1
    end

    self
  end

  def my_each_with_index
    count = 0

    while count < self.length
      yield(self[count], count)
      count += 1
    end

    self
  end

  def my_select
    count = 0
    new_array = []

    while count < self.length
      if yield(self[count])
        new_array.push(self[count])
      end
      count += 1
    end

    new_array
  end

  def my_all?
    count = 0
    returns_false = false

    while count < self.length
      if !(yield(self[count]))
        returns_false = true
      end
      count += 1
    end

    if returns_false
      return false
    else
      return true
    end
  end

  def my_none?
    count = 0
    returns_true = false

    while count < self.length
      if yield(self[count])
        returns_true = true
      end
      count += 1
    end

    if returns_true
      return false
    else
      return true
    end
  end

  def my_count
    count = 0
    true_elements = 0

    while count < self.length
      if block_given?
        if yield(self[count])
          true_elements += 1
        end
      else
        if self[count]
          true_elements += 1
        end
      end
      count += 1
    end

    return true_elements
  end

  def my_map
    count = 0
    new_array = []

    while count < self.length
      new_element = yield(self[count])
      new_array.push(new_element)
      count += 1
    end

    return new_array
  end
end
