def substrings(text, dictionary)
  words = text.downcase.split(' ')

  sub_strings = words.reduce(Hash.new(0)) do |result, word|
    found = dictionary.select { |w| word.include?(w) }
    found.each { |w| result[w] += 1}
    result
  end

  sub_strings
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print "Dictionary: "
p dictionary

text = "Howdy partner, sit down! How's it going?"
puts "Calling substrings with text \"#{text}\""
puts "Expecting: { \"down\" => 1, \"go\" => 1, \"going\" => 1, \"how\" => 2, \"howdy\" => 1, \"it\" => 2, \"i\" => 3, \"own\" => 1, \"part\" => 1, \"partner\" => 1, \"sit\" => 1 }"
puts "Got:      #{substrings(text, dictionary)}"