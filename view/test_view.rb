# frozen_string_literal: true

require 'rspec/autorun'
require_relative 'view.rb'

describe GumballView do
  context 'when user feedback required, ' do
    let(:view) { GumballView.new }

    it 'returns greeting.' do
      expect(view.greet).to eq('Welcome to your Gumball Machine!')
    end

    it 'returns farewell.' do
      expect(view.bye).to eq('Gumball Machine shutting down...')
    end
  end

  context 'when menu is required, ' do
    let(:view) { GumballView.new }

    it 'menu option: check stock.' do
      expect(view.stock).to eq('Check Gumball levels.')
    end

    it 'menu option: dispense' do
      expect(view.dispense).to eq('Get some Gumballs.')
    end

    it 'menu option: refill' do
      expect(view.refill).to eq('Refill Gumball machine.')
    end

    it 'menu option: quit' do
      expect(view.quit).to eq('Turn Gumball machine off.')
    end

    it 'displays menu' do
      expect(view.menu)
        .to eq(
          "| Gumball Menu |---\n" \
          "[1]: Check Gumball levels.\n" \
          "[2]: Get some Gumballs.\n" \
          "[3]: Refill Gumball machine.\n" \
          "[4]: Turn Gumball machine off.\n"
        )
    end
  end
end
