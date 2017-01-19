random_words = ["camera", "photo", "picture", "landscape", "light", "shadow", "lens", "portrait"]
#the number is one more
random_num = rand(0..7).to_i
chosen_word = random_words[random_num]
letter_array = chosen_word.chars
blank_array = [ ]
guesses = 7
state = true
for i in 0..letter_array.length-1
  blank_array.push(" __ ")
end
puts chosen_word, random_num
prompt = ">"
puts "We are going to play a game of hangman. You will have seven guesses, and the topic is photography."
puts prompt
puts "Your word has ", letter_array.length, "letters"
puts prompt
puts blank_array
puts prompt
puts "You may begin guessing."
puts prompt
for x in 1..guesses
  for i in 0..letter_array.length-1
    if $stdin.gets.chomp == letter_array[i]
      state = true
    else
      state = false
    end
    if state == false
      puts "wrong. you have ", guesses-1, " guesses left"
    else
      blank_array[i] = letter_array[i]
      puts "correct! you have " guesses, " guesses left"
    end
  end
  puts state
end
