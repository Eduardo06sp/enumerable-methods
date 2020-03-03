module Enumerable
  def my_each
    count = 0

    while count < self.length
      yield
      count += 1
    end
  end
end
