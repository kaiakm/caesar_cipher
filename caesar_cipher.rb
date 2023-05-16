def caesar_cipher(string, shift)
    result = ""

    string.each_char do |letter|
        if letter.match(/[a-z]/i)
            base = letter.match(/[a-z]/) ? "a" : "A"
            shifted_letter = ((letter.ord - base.ord + shift) % 26 + base.ord).chr
            result += shifted_letter
        else
            result += char
        end
    end

    puts result
end

caesar_cipher("KAIA", 3)