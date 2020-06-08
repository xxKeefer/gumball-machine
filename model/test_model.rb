# frozen_string_literal: true

require 'rspec/autorun'
require 'yaml'
require_relative 'model.rb'

describe GumballModel do
  context 'when asked to check stock level, ' do
    let(:model) { GumballModel.new }

    it 'returns correct amount.' do
      model.stock = 6
      expect(model.check_stock).to eq(6)
    end
  end

  context 'when checking if there are available gumballs, ' do
    let(:model) { GumballModel.new }

    it 'returns returns false if no gumballs.' do
      model.stock = 0
      expect(model.available?).to eq(false)
    end

    it 'returns returns true if there are at least one gumball.' do
      model.stock = 1
      expect(model.available?).to eq(true)
    end

    it 'returns returns true if there are many gumballs.' do
      model.stock = 789
      expect(model.available?).to eq(true)
    end
  end

  context 'when stock level changes the stock is updated.' do
    let(:model) { GumballModel.new }

    it 'lowers stock level when gumball is dispensed.' do
      model.stock = 50
      expect(model.dispense).to eq(model.stock)
    end

    it 'lowers stock level when many gumballs are dispensed.' do
      model.stock = 50
      expect(model.dispense(25)).to eq(model.stock)
    end

    it 'lowers stock level when gumball is refilled.' do
      model.stock = 50
      expect(model.refill).to eq(model.stock)
    end

    it 'lowers stock level when many gumballs are refilled.' do
      model.stock = 50
      expect(model.refill(25)).to eq(model.stock)
    end
  end
end
