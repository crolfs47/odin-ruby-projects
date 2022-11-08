# Implement a method #substrings that takes a word as the first argument and then an
# array of valid substrings (your dicttionary) as the second argument. It should return
# a hash listing each substring (case insensitive) that was found in the original string
# and how many times it was found.

def substrings(string, dictionary)
  hash = {}
  dictionary.each do |word|
    hash[word] = string.downcase.scan(word).length unless string.downcase.scan(word).length == 0
  end
  p hash
end

# string = "below"
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# string = "testing"
# dictionary = ["test", "it", "sting", "test", "x"]

string = "Howdy partner, sit down! How's it going?"
dictionary = %w[below down go going horn how howdy it i low own part partner sit]

substrings(string, dictionary)
