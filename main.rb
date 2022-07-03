def caesar_cipher(input, number)
    #split input into array
    letters = input.split('')
    #convert each letter into number
    letter_to_num = letters.map {|letter| letter.ord}
    #add number to each number
    final_num = letter_to_num.map do |num|
        if num < 91 && num + number >90 || num < 123 && num + number >122
            num + number - 26
        elsif num < 65
            num
        else
            num + number
        end
    end
    #convert each number into letter
    num_to_letter = final_num.map {|num| num.chr}
    #join letters
    result = num_to_letter.join('')
    result
end
caesar_cipher("What a string!", 5)