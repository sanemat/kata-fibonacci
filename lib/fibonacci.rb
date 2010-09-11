# encoding: utf-8
require 'active_support/memoizable'
class Fibonacci
  extend ActiveSupport::Memoizable
  def initialize
    @stored = {}
  end
  def number(input)
    unless restore_fibonacci(input).nil?
      return restore_fibonacci(input)
    end
    if input == 0
      store_number(input, 0)
    elsif input == 1
      store_number(input, 1)
    else
      store_number(input, twice_before_fibonacci_plus_before_fibonacci(input))
    end
    restore_fibonacci input
  end
  memoize :number
  def twice_before_fibonacci_plus_before_fibonacci(input)
    number(input - 2) + number(input - 1)
  end

  def store_number(input, fibonacci_number)
    @stored[input] = fibonacci_number
  end

  def restore_fibonacci(input)
    @stored[input] || nil
  end
end
