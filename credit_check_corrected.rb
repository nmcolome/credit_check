class Credit_check

    attr_reader :card_number, 
                :doubled_elements, 
                :new_collection

    def initialize(card_number)
        @card_number      = card_number
        @doubled_elements = []
        @new_collection   = []
    end
    
    def size
        @card_number.length -1
    end

    def doubling_elements
        card_number[index].to_i * 2
    end
    
    def size_odd?
        doubled_elements = (0..size).to_a.map do |index|
            if index.even?
                doubling_numbers
            else 
              card_number[index].to_i
            end
        end
    end
     
    def size_even?
        doubled_elements = []
        doubled_elements = (0..size).to_a.map do |index|
            if index.odd?
              doubling_numbers
            else 
              card_number[index].to_i
            end
        end
    end

    def new_collection
        (0..size).to_a.map do |index|
            if doubled_elements[index].to_s.length > 1
                new_number = doubled_elements - 9
            else 
              doubled_elements[index]
            end
        end
    end
    
    def sum
        sum = 0
        new_collection.each {|sum_number| sum += sum_number}
    end

    def validation
        if sum % 10 == 0
            puts "The number is valid!"
        else puts "The number is invalid!"
        end
    end
    
end

test_1 = Credit_check.new("342801633855673").size
# test_1.validation
