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
end
