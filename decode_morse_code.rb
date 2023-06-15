def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

def decode_word(morse_word)
  word = morse_word.split(" ").map { |char| MORSE_CODE[char] }.join
end

def decode_with_3_spaces(morse_word)
  words = morse_word.split(" ").map { |char| decode_word(char) }
  message = words.join(" ")
end


