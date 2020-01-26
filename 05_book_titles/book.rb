class Book
    def title=(str)
      words = str.split
      new_title = ""
      words.each_with_index do |word, index|
        prepositions = ["above", "about", "across", "against", "along", "among", "around", "at", "before", "behind", "below", "beneath", "beside", "between", "beyond", "by", "down", "during", "exept", "for", "from", "in", "inside", "into", "like", "near", "of", "off", "on", "since", "to", "toward", "through", "under", "until", "up", "upon", "with", "within", "and", "the", "a", "an"]
        if index == 0 or word == "i" or !(prepositions.include?(word))
          new_title << word.capitalize
        else
          new_title << word
        end
        new_title << " "
      end
      @title = new_title.chop
    end
  
    def title
      @title
    end
  end