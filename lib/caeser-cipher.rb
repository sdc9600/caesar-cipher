#Ordinal number limits A = 65, Z = 90, a = 97, z = 122

def caeser_cipher(phrase, shift)
  return "Invalid" if phrase.class != String || shift.class != Integer
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
  char_array.join
end