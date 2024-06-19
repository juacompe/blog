class Article < ApplicationRecord
    def display_body
        backward_string_by_word self.body
    end

    private
    def backward_string_by_word(sentence)
        sentence
          .split(" ")
          .map { |w| reverse_word(w) }
          .join(" ")
    end
    
    private
    def reverse_word(word)
        word.chars.reverse.join
    end
end
