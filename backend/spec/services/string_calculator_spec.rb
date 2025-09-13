require 'rails_helper'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add('')).to eq(0)
    end

    it 'returns number for a single number' do
      calculator = StringCalculator.new
      expect(calculator.add('1')).to eq(1)
    end

    it 'returns the sum for two numbers' do
      calculator = StringCalculator.new
      expect(calculator.add('1,9')).to eq(10)
    end

    it 'returns the sum for an unknown amount of numbers' do
        calculator = StringCalculator.new
        expect(calculator.add('6,2,3,12,5')).to eq(28)
    end

    it 'returns the sum when numbers with new lines & even commas' do
        calculator = StringCalculator.new
        expect(calculator.add("67\n7,6")).to eq(80)
    end

    it 'supports a custom single-character delimiter' do
        calculator = StringCalculator.new
        expect(calculator.add("//|\n6|9")).to eq(15)
    end

  end
end