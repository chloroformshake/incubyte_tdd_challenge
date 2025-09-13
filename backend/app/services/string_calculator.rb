class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(header[2]) # get char after `//`
    end
    
    parts = numbers.split(/#{delimiter}/).map(&:to_i)
    
    negatives = parts.select { |n| n < 0 }
    unless negatives.empty?
      raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}"
    end

    parts.sum
  end
end