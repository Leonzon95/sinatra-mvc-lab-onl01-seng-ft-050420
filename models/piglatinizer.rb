class PigLatinizer
    attr_accessor :sentence

    def piglatinize(sentence)
        word_array = sentence.split
        latinized_words = word_array.map do |word|
            if %w(a e i o u A E I O U).include?(word[0])
                latinized = word << "w"
            else
                x = 0
                while !%w(a e i o u A E I O U).include?(word[x])
                    x += 1
                end
                latinized = word[x..-1] + word[0..x-1]
            end
            latinized << "ay"
        end.join(" ")
    end
end