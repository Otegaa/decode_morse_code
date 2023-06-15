def decode_char(morse_char)
  MORSE_CODE[morse_char] || "?"
end

def decode_word(morse_word)
  morse_word.split.map { |char| MORSE_CODE[char] }.join
end

def decode_with_3_spaces(morse_word)
  words = morse_word.split('   ').map { |char| decode_word(char) }
  words.join(' ')
end

MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

decoded_char = decode_char('.-')
puts decoded_char

decoded_word = decode_word('-- -.--')
puts decoded_word

decoded_str = decode_with_3_spaces('-- -.--   -. .- -- .')
puts decoded_str

decoded_str2 = decode_with_3_spaces('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts decoded_str2
