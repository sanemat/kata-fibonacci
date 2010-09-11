# encoding: utf-8
require 'active_support/memoizable'
class Fibonacci
  extend ActiveSupport::Memoizable
  def number(input)
    if input == 0
      0
    elsif input == 1
      1
    else
      twice_before_fibonacci_plus_before_fibonacci(input)
    end
  end
  memoize :number
  def twice_before_fibonacci_plus_before_fibonacci(input)
    number(input - 2) + number(input - 1)
  end
end
