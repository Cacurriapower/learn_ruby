#write your code here
def echo received_string
    received_string
end

def shout received_string
    shouted_string = received_string.upcase
end

def repeat received_string, number_of_repeats = 1
    repeated_string = received_string
    if(number_of_repeats == 1)
        repeated_string += " " + received_string
    else
        while number_of_repeats > 1
            repeated_string += " " + received_string
            number_of_repeats -= 1
        end
    end
    return repeated_string
end

def start_of_word received_string, index_of_last = 1
        return received_string[0..index_of_last - 1]
end

def first_word received_string
    return_string = ""
    for iterator in 0..received_string.length - 1 do
        if received_string[iterator] != " "
            return_string += received_string[iterator]
        else
            return return_string
        end
    end
    return return_string
end

def titleize received_string
    word_array = received_string.split
    for iterator in 0..word_array.length - 1 do
        if word_array[iterator] != "and" && word_array[iterator] != "the" && word_array[iterator] != "over"
            word_array[iterator] = word_array[iterator].capitalize
        end
    end
    word_array[0] = word_array[0].capitalize
    return_string = word_array.join(" ")
    return return_string
end




