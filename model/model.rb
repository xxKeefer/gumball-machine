# frozen_string_literal: true

class GumballModel
  attr_accessor :stock
  def initialize
    @stock = 0
  end

  def check_stock
    @stock
  end

  def available?
    @stock.positive?
  end

  def dispense(amount = 1)
    @stock -= amount
  end

  def refill(amount = 1)
    @stock += amount
  end
end
