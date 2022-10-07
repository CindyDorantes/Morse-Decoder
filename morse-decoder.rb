@code = {
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
  '...-' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  @code.each { |key, letter|
    if char === key then
      return letter
    end
  }
end

def decode_word(word)
  @wordTranslated = word.split(/ /).map { |char| decode_char(char) }.join
end

def decode_message(sentence)
  @sentenceTranslated = sentence.split(/   /).map { |word| decode_word(word) }.join(' ')
end

@message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
@messageTranslated = decode_message(@message)
print "The old bottle morse code message .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...
    means: #{@messageTranslated}"
