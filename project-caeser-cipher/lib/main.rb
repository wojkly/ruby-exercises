
class Cipher
    def caesar_cipher(string, shift)
        shift = shift % 26

        string = string.split("")
        string.map! do |letter|
            is_letter = true
            # upcase
            if 65 <= letter.ord && letter.ord <= 90
                min_ord = 65
                max_ord = 91
            # downcase
            elsif 97 <= letter.ord && letter.ord <= 122
                min_ord = 97
                max_ord = 123
            else
                is_letter = false
            end

            if is_letter
                letter_ord = letter.ord + shift
                #if letter => code
                if letter_ord  >= max_ord
                    letter_ord = min_ord + letter_ord % max_ord
                end
                letter_ord.chr
            else
                letter
            end

        end
        string = string.join("")
        string
    end
end
