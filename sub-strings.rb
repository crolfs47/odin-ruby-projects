# Implement a method #substrings that takes a word as the first argument and then an 
# array of valid substrings (your dicttionary) as the second argument. It should return
# a hash listing each substring (case insensitive) that was found in the original string
# and how many times it was found.

def substrings(word, dictionary)
    i = 1
    p dictionary
    while i <= word.length do
         if dictionary.include?(word[0,i])
            p word[0,i]
         else
            p "does not include"
         end
        i +=1
    end
end

# word = "below"
# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

word = "test"
dictionary = ["test", "t", "test"]

substrings(word, dictionary)