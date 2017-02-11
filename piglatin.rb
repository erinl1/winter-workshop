puts "enter the word you would like to convert."
word = $stdin.gets.chomp
letter_array = word.chars.join()
array = []
for i in 1..letter_array.length - 1
  array.push(letter_array[i])
end
piglatin = array.join()
piglatin = "#{piglatin}#{letter_array[0]}ay "
puts piglatin
