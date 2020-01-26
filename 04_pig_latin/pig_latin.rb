#write your code here
def translate string
    array_of_words = string.split
    iterator = 0
    for word in array_of_words do
        if word.start_with?("a") || word.start_with?("e") || word.start_with?("i") || word.start_with?("o") || word.start_with?("u")
            end_string = "ay"
            array_of_words[iterator] = array_of_words[iterator] + end_string
            iterator += 1
        else
            array_of_words[iterator] = consonant(array_of_words[iterator])
            iterator += 1
        end
    end
    return array_of_words.join(" ")
end

def consonant string
    string_of_consonants = ""
    end_word = "ay"
    for iterator in 0..string.length - 1 do
        if string[iterator].start_with?("a") || string[iterator].start_with?("e") || string[iterator].start_with?("i") || string[iterator].start_with?("o") || string[iterator].start_with?("u")
            break
        elsif string[iterator].start_with?("q") && string[iterator + 1].start_with?("u")
            string_of_consonants += "qu"
        else
            string_of_consonants += string[iterator]
        end
    end
    return string[string_of_consonants.length..] + string_of_consonants + end_word
end
    