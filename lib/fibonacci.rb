# encoding: utf-8
class Fibonacci
  def initialize
  end
  def number(input)
    if input == 0
      return 0
    elsif input == 1
      return 1
    end
    number(input - 2) + number(input - 1)
  end
end
