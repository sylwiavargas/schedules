require 'pry'

class String

    def excited
        self.upcase + "!!!"
    end

    def titleize
        short_words_arr = %w{a an and as at but by for if in of on or the to via vs vs.}
    
        title = split.map do |word|
            # lines 18-22 could be refactored using ternaries:
            ## short_words_arr.include?(word) ? word : word.capitalize
            # or one-liner if/unless statement, in which case we need to return the word:
            ## word.capitalize! unless short_words_arr.include?(word)
            ## word
            if short_words_arr.include?(word)
                word
            else 
                word.capitalize
            end
        end
        title.join(" ")
    end
end




binding.pry
0