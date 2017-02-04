questions = [
  {
    question: "Who plays the protagonist in SHERLOCK?",
    answer: ["Benedict Cumberbatch"]
  },
  {
    question: "name a female character in the show SHERLOCK.",
    answer: ["Molly", "Mary"]
  },
  {
    question: "What city does the show THE FLASH take place in?",
    answer: ["Central City"]
  },
  {
    question: "how does tom and jerry end?",
    answer: ["committing suicide", "they die"]
  },
  {
    question: "name a hogwarts house from HARRY POTTER.",
    answer: ["Slytherin", "Gryffindor", "Ravenclaw", "Hufflepuff"]
  },
  {
    question: "who is the half-blood prince in HARRY POTTER?",
    answer: ["Severus Snape"]
  },
  {
    question: "name a HARRY POTTER character born in july.",
    answer: ["Neville", "Harry"]
  }
  {
    question: "how many horcruxes does voldemort have?",
    answer: ["eight", 8]
  }
  {
    question: "name a boy who dies in LORD OF THE FLIES.",
    answer: ["Piggy", "Simon"]
  },
  {
    question: "where does spongebob squarepants work?",
    answer: ["Krusty Krab", "The Krusty Krab"]
  },
  {
    question: "what is Dustin's nickname in STRANGER THINGS?",
    answer: ["Frogface"]
  }
]



def start(questions)
  puts "this is a trivia fandom game. get the question right and you can stay."
  puts questions[2][:question]
end

start(questions)
