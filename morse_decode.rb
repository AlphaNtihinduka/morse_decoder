def decode_char(letter)
  morse_keys = { '.-'	=> 'A', '-...' => 'B',	'-.-.' => 'C',	'-..' => 'D',	'.' =>	'E',
                 '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
                 '--'	=>	'M', '-.' => 'N',	'---' => 'O',	'.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
                 '...' => 'S', '-' => 'T',	'..-'	=> 'U',	'...-'	=>	'V',	'.--' => 'W',	'-..-' => 'X',
                 '-.--' => 'Y',	'--..' =>	'Z'	}
  morse_keys[letter]
end

def decode_word(word)
  w = ''
  word.split(' ').each { |n| w << decode_char(n) }
  w
end

def decode_text(text)
  sentence = ''
  text.split('   ').each { |n| sentence << "#{decode_word(n)} " }
  sentence
end
puts decode_text '-- -.--   -. .- -- .'
