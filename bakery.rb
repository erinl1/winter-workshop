bakery = {
  name: "Erin's Bakery",
  cupcake: {
    cake: {
      chocolate: {
        description: "rich chocolate base with actual chunks",
      },
      vanilla: {
        description: "classic vanilla bean base",
      },
      coffee: {
        description: "caffeine-filled java blend",
      },
      lemon: {
        description: "refreshing lemon-y base" ,
      },
      raspberry: {
        description: "raspberry, pink, base",
      },
    },
    frosting: {
      flavor: {
        chocolate: {
          description: "a creamy chocolate buttercream",
        },
        vanilla: {
          description: "a vanilla buttercream",
        },
        coffee: {
          description: "a coffee blend buttercream"
        },
        whipped: {
          description: "a fluffy whipped cream"
        },
      },
      amount: {
        more: {
          description: "an overexcessive amount",
        },
        average: {
          description: "a typical amount",
        },
        less: {
          description: "a small dollop",
        },
      },
      design: {
        floral: {
          description: "a floral pattern",
        },
        regular: {
          description: "a regular pattern",
        },
      },
    },
  },
}
prompt =  "```````````````````````````````````"
cake_flavor = bakery[:cupcake][:cake].keys
frosting_flavor = bakery[:cupcake][:frosting][:flavor].keys
frosting_amount = bakery[:cupcake][:frosting][:amount].keys
frosting_design = bakery[:cupcake][:frosting][:design].keys
cupcake_box = []
def starter(bakery)
puts "welcome to MILK. Where our delectable treats will require you a glass of MILK."
puts "Our bakery lets you choose whatever flavors and designs."
end
def cupcake_cake(bakery, prompt, cake_flavor)
puts "Let them or you eat cake. Here are our base flavors:"
puts prompt, cake_flavor, prompt
"Enter the flavor you'd like."
cake = $stdin.gets.chomp
description_cake =bakery[:cupcake][:cake][cake.to_sym][:description]
puts prompt, cake + ": ", description_cake, prompt
end

def cupcake_frosting(bakery, prompt, frosting_flavor)
puts prompt, "Now pick a frosting to top of that cake: ", prompt, frosting_flavor, prompt
frosting = $stdin.gets.chomp
description_flavor = bakery[:cupcake][:frosting][:flavor][frosting.to_sym][:description]
puts prompt, frosting + ": ", description_flavor, prompt
end

def cupcake_amount(bakery, prompt, frosting_amount)
puts prompt, "If you prefer a different sizing for this frosting: ", prompt, frosting_amount, prompt
amount = $stdin.gets.chomp
description_amount = bakery[:cupcake][:frosting][:amount][amount.to_sym][:description]
puts prompt, amount + ": ", description_amount, prompt
end

def cupcake_design(bakery, prompt, frosting_design)
puts prompt, "Frosting comes in different layouts: ", prompt, frosting_design, prompt
design = $stdin.gets.chomp
description_design = bakery[:cupcake][:frosting][:design][design.to_sym][:description]
puts prompt, design + ": ", description_design, prompt
end

def finished(bakery, description_cake, description_amount, description_flavor, description_design)
puts "Finished?"
finish = $stdin.gets.chomp
puts prompt
if finish == "yes"
  puts "OK! Your #{description_cake} with #{description_amount} of #{description_flavor} in #{description_design} is in your cupcake box."
  cupcake = {
    cake: description_cake,
    amount: description_amount,
    flavor: description_flavor,
    design: description_design,
  }
  cupcake_box.push(cupcake)
  puts cupcake_box
end
end

 starter(bakery)
 cupcake_cake(bakery, prompt, cake_flavor)
 cupcake_frosting(bakery, prompt, frosting_flavor)
 cupcake_amount(bakery, prompt, frosting_amount)
 cupcake_design(bakery, prompt, frosting_design)
 finished(bakery, description_cake, description_amount, description_flavor, description_design)



#for x in 0..bakery[:cupcake][:cake].length
#  puts bakery[:cupcake][:cake][x], ": ", bakery[:cupcake][:cake][x][:description]
#end
