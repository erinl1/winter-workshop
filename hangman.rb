random_words = ["camera", "photo", "picture", "landscape", "light", "shadow", "lens", "portrait"]
#the number is one more
random_num = rand(random_words.length)
chosen_word = random_words[random_num]
letter_array = chosen_word.chars.join()
blank_array = [ ]
guesses = 7
for i in 0..letter_array.length-1
  blank_array.push(" __ ")
end
puts chosen_word, random_num
prompt = ">"
puts "We are going to play a game of hangman. You will have seven guesses, and the topic is photography."
puts prompt
puts "Your word has ", letter_array.length, "letters"
puts prompt
puts blank_array.join()
puts prompt
puts "You may begin guessing."
puts prompt

  #gues1
  iftrue = false
  finish = true
  game_end = false
while guesses >= 0 && !game_end
  guess1 = STDIN.gets.chomp
  iftrue = false
  finish = true
  game_end = false
  for i in 0..letter_array.length-1

    if guess1 == letter_array[i]
      iftrue = true
      blank_array[i] = letter_array[i]
      puts prompt
      puts "correct! you have ", (guesses), " guesses left"
      puts prompt
      puts blank_array.join()
      puts prompt
      puts iftrue
    end

    if blank_array[i] == " __ "
      finish = false
    end

  end
    if iftrue == false
      puts iftrue
      puts prompt
      guesses = guesses - 1
      puts "wrong. you have ", guesses, " guesses left"
    end
    if finish == true
    puts "You have saved the man!"
    game_end = true
    end

  if guesses == 0
    puts "you have hung the man."
  end
  puts game_end
end
