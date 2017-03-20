puts "Enter card number:"
card_number = gets.chomp

total = card_number.length - 1

if total.odd?
    doubled_elements = (0..total).to_a.map do |index|
        if index.even?
            card_number[index].to_i * 2
        else card_number[index].to_i
        end
    end
    
    else doubled_elements = (0..total).to_a.map do |index|
        if index.odd?
            card_number[index].to_i * 2
        else card_number[index].to_i
        end
    end
end

new_collection = (0..total).to_a.map do |index|
    if doubled_elements[index].to_s.length > 1
        new_number = doubled_elements[index].to_s[0].to_i + doubled_elements[index].to_s[1].to_i
    else doubled_elements[index]
    end
end

sum = 0
new_collection.each {|sum_number| sum += sum_number}

if sum % 10 == 0
    puts "The number is valid!"
else puts "The number is invalid!"
end