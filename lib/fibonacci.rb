# encoding: utf-8
class Fibonacci
  def self.number(input)
    if input == 0
      return 0
    elsif input == 1
      return 1
    end
    self.number(input - 2) + self.number(input - 1)
  end
end
