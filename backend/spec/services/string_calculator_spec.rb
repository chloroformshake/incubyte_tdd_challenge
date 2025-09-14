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

    it 'supports a custom single-character (|) delimiter' do
        calculator = StringCalculator.new
        expect(calculator.add("//|\n6|9")).to eq(15)
    end

    it 'supports a custom single-character (@) delimiter' do
        calculator = StringCalculator.new
        expect(calculator.add("//@\n2@3")).to eq(5)
    end

    it 'throw an exception when a negative number is input' do
        calculator = StringCalculator.new
        expect { calculator.add("5,-3,1") }.to raise_error(ArgumentError, "negative numbers not allowed -3")
    end

    it 'lists all negative numbers in the exception message' do
    calculator = StringCalculator.new
    expect { calculator.add("2,-4,3,-5") }
        .to raise_error(ArgumentError, "negative numbers not allowed -4,-5")
    end

    it 'returns how many times add has been called' do
        calculator = StringCalculator.new
        calculator.add("1,2")
        calculator.add("3")
        expect(calculator.get_called_count).to eq(2)
    end

    it 'ignores numbers bigger than 1000' do
        calculator = StringCalculator.new
        expect(calculator.add("8,2,2,1001,1022")).to eq(8,2,2)
    end

  end
end