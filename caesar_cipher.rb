def caesar_cipher(string, shift)
    string.chars.map do |char|
        if char =~ /[a-zA-z]/
            ascii_offset = char.downcase == char ? 97 : 65
            (((char.ord - ascii_offset + shift) % 26) + ascii_offset).chr
        else
            char
        end
    end.join
end

puts caesar_cipher("Yay, you did it!", 5)