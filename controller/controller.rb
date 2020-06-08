# frozen_string_literal: true

require_relative '../model/model.rb'
require_relative '../view/view.rb'

class GumballController
  def initialize
    @model = GumballModel.new
    @view = GumballView.new
  end

  def run
    puts @view.greet
    loop do
      puts @view.menu
      case gets.strip.to_i
      when 1 # check
        puts @view.check_stock(@model.check_stock)

      when 2 # get
        unless @model.available?
          puts @view.no_balls
          next
        end
        amount = how_many
        unless @model.enough?(amount)
          puts @view.not_enough
          next
        end
        @model.dispense(amount)
        puts @view.dispense!(amount)

      when 3 # refill
        amount = how_many
        @model.refill(amount)
        puts @view.refill!(amount)

      when 4
        puts @view.bye
        break
      end
    end
  end

  def how_many
    puts @view.how_many
    loop do
      return gets.strip.to_i
    end
  end
end
