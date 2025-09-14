class StringCalculator
    def initialize
        @call_count = 0
    end

    def add(numbers)
        # increment the call count
        @call_count += 1
        return 0 if numbers.empty?

        # get the delimiter
        delimiter = /,|\n/
        if numbers.start_with?("//")
            header, numbers = numbers.split("\n", 2)
            if header.start_with?("//[")
                # grab content between square brackets
                delimiter = Regexp.escape(header[/\[(.+)\]/, 1])
            else
                delimiter = Regexp.escape(header[2])
            end
        end
        
        # split the numbers
        parts = numbers.split(/#{delimiter}/).map(&:to_i)
        
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