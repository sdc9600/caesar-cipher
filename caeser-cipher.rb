#Ordinal number limits A = 65, Z = 90, a = 97, z = 122

def caeser_cipher(phrase, shift)
  ordinal_array = []

  phrase.chars.each {|value| ordinal_array.push(value.ord)}
  ordinal_array.each_with_index do
    |value, index|
    shift.times do 
      if ordinal_array[index] == 91 || ordinal_array[index] == 123
        ordinal_array[index] -= 26
      end
      ordinal_array[index] += 1
     end
  end
  
  char_array = ordinal_array.each_with_index {|value, index| ordinal_array[index] = value.chr}
  p char_array.join
end


def collect_phrase
  regex = /^[A-Za-z]+$/
  puts "Please input a string value for the phrase"
  phrase = gets.chomp
  if regex.match?(phrase)
    return phrase
  else
    collect_phrase
  end
end

def collect_shift
  puts "Please input an integer value for the shift value"
  shift = gets.chomp.to_i
  if shift.class == Integer
    return shift
  else
    collect_shift
  end
end

caeser_cipher(collect_phrase, collect_shift)