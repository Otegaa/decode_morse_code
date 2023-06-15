def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

def decode_word(morse_word)
word = morse_word.split(" ").map { |char| MORSE_CODE[char] }.join
end



