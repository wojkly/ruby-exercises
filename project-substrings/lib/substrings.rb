class Substrings
    def get_substrings(word, dict)
        res = {}
        dict.each do |substring|
            count = 0
            0.upto(word.length - substring.length) do |start_index|
                if word[start_index, substring.length].upcase == substring.upcase
                    p word[start_index, substring.length] +" == " + substring
                    count += 1
                end
            end
            if count > 0
                res[substring] = count
            end
        end
        # p res
        res
    end
end
