class StringCalculator
    def initialize
        @call_count = 0
    end

    def add(numbers)
        # increment the call count
        @call_count += 1
        return 0 if numbers.empty?

        # get the delimiter
        delimiters = [/,|\n/]
        if numbers.start_with?("//")
            header, numbers = numbers.split("\n", 2)

            if header.start_with?("//[")
                # collect all delimiters inside [ ]
                raw_delimiters = header.scan(/\[(.*?)\]/).flatten
                delimiters = raw_delimiters.map { |d| Regexp.new(Regexp.escape(d)) }
            else
                # handle single-character custom delimiter
                delimiters = [Regexp.new(Regexp.escape(header[2..]))]
            end
        end

        # replace all delimiters with a consistent char
        normalized = numbers
        delimiters.each do |delimiter|
            normalized = normalized.gsub(delimiter, ',')
        end
        
        # split the numbers
        parts = normalized.split(',').map { |n| n.strip.to_i }
        
        # check for negative numbers
        negatives = parts.select { |n| n < 0 }
        unless negatives.empty?
            raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}"
        end

        # filter out numbers above 1000
        filter_above_1000 = parts.reject { |n| n > 1000 }

        # return the sum
        filter_above_1000.sum
    end

    def get_called_count
        @call_count
    end
end