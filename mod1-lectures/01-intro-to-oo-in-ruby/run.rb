require 'pry'

class String

    def excited
        self.upcase + "!!!"
    end

    def titleize
        short_words_arr = %w{a an and as at but by for if in of on or the to via vs vs.}
    
        title = split.map do |word|
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