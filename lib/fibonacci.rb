# encoding: utf-8
class Fibonacci
  def initialize
    @stored = {}
  end
  def number(input)
    if @stored.has_key?(input)
      return @stored[input]
    end
    if input == 0
      @stored[input] = 0
    elsif input == 1
      @stored[input] = 1
    else
      @stored[input] = number(input - 2) + number(input - 1)
    end
    stored_number input
  end

  def stored_number(input)
    @stored[input] || nil
  end
end
