# frozen_string_literal: true

class GumballView
  def initialize; end

  def greet
    'Welcome to your Gumball Machine!'
  end

  def bye
    'Gumball Machine shutting down...'
  end

  def stock
    'Check Gumball levels.'
  end

  def check_stock(balls)
    balls.positive? ? count(balls) : no_balls
  end

  def count(balls)
    "There are #{balls} Gumball(s) in the Machine."
  end

  def no_balls
    'Sorry, Machine Empty!'
  end

  def dispense
    'Get some Gumballs.'
  end

  def dispense!(amount)
    "You recieved #{amount} Gumball(s)!"
  end

  def refill
    'Refill Gumball machine.'
  end

  def refill!(amount)
    "Reloaded! #{amount} Gumball(s) added to machine."
  end

  def how_many
    'How many? Gumball(s):'
  end

  def not_enough
    "Sorry, you don't have enough balls."
  end

  def quit
    'Turn Gumball machine off.'
  end

  def menu
    "| Gumball Menu |---\n" \
    "[1]: #{stock}\n" \
    "[2]: #{dispense}\n" \
    "[3]: #{refill}\n" \
    "[4]: #{quit}\n"
  end
end
