# Implement a caesar cipher that takes in a string and a shift factor and then outputs the modified string

def caesar_cipher(string, shift)
  new_string = ''
  string.each_char do |char|
    # Modify if uppercase
    if char.ord.between?(65, 90)
      num = ((char.ord - 65 + shift) % 26) + 65
      new_string += num.chr
    # Modify if lowercase
    elsif char.ord.between?(97, 122)
      num = ((char.ord - 97 + shift) % 26) + 97
      new_string += num.chr
    # Keep spaces and other characters
    else
      new_string += char
    end
  end
  new_string
  p new_string
end

caesar_cipher('What a string!', 5)
