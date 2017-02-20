store = {
  name: "erin's at(tired)",
  address: "please dont stalk me",
  url: "erin's_life_&_this_url_does_not_exist.com",
  hours: "9AM - 8PM weekdays and weekends",
  clothes: {
    jackets: {
      name: "jackets",
      type: {
        bomber: {
          colors:
          [
            {
              color: "floral",
              quantity: 20,
            },
            {
              color: "black",
              quantity: 20,
            },
            {
              color: "olive",
              quantity: 20,
            },
            {
              color: "red",
              quantity: 20,
            },
          ],
          price: 80,
        },
        denim: {
          colors: [
            {
              color: "white",
              quantity: 20,
            },
            {
              color: "lightwash",
              quantity: 20,
            },
            {
              color: "furline",
              quantity: 20,
            },
          ],
          price: 85,
        }
      },
    },
    tops: {
      name: "tops",
      type: {
        sweaters:  {
          colors: [
            {
              color: "black",
              quantity: 30,
            },
            {
              color: "white",
              quantity: 30,
            },
            {
              color: "grey",
              quantity: 30,
            },
            {
              color: "blue",
              quantity: 30,
            },
            {
              color: "purple",
              quantity: 30,
            },
          ],
          price: 35,
        },
        hoodies: {
          colors: [
            {
              color: "black",
              quantity: 35,
            },
            {
              color: "grey",
              quantity: 35,
            },
            {
              color: "white",
              quantity: 35,
            },
            {
              color: "blue",
              quantity: 35,
            },
            {
              color: "pink",
              quantity: 35,
            },
          ],
          price: 30,
        },
        shirts: {
          colors: [
              color: "blue",
              quantity: 40,
            },

            {
              color: "red",
              quantity: 40,
            },
            {
              color: "purple",
              quantity: 40,
            },
          ]
        }
      },
    },
    bottoms: {
      name: "bottoms",
      type: {
        shorts: {
          colors: [
            {
              color: "denim",
              quantity: 20,
            },
            {
              color: "white",
              quantity: 20,
            },
            {
              color: "black",
              quantity: 20,
            },
          ],
          price: 60,
        },
        jeans: {
          colors: [
            {
              color: "lightwash"
            },
            {
              color: "mediumwash"
            },
            {
              color: "darkwash"
            },
          ],
          price: 70,
        },
        leggings: {
          colors: [
            {
              color: "nike",
              quantity: 30,
            },
            {
              color: "adidas",
              quantity: 30,
            },
            {
              color: "lululemon",
              quantity: 30,
            },
          ],
          price: 35,
        },
        skirts: {
          colors: [
            {
              color: "black",
              quantity: 30,
            },
            {
              color: "floral",
              quantity: 30,
            },
            {
              color: "denim",
              quantity: 30,
            },
          ],
          price: 50,
        }
      },
    },
    dresses: {
      name: "dresses",
      type: {
        dresses: {
          colors: [
            {
              color: "black",
              quantity: 20,
            },
            {
              color: "white",
              quantity: 20,
            },
            {
              color: "floral",
              quantity: 20,
            },
            {
              color: "pattern",
              quantity: 20,
            },
          ],
          price: 70,
          }, rompers: {
            colors: [
              {
                color: "red",
                available: 20,
              },
              {
                color: "white",
                available: 20,
              },
              {
                color: "black",
                available: 20,
              },
              {
                color: "floral",
                available: 20,
              },
            ],
            price: 70,
          }
        }
      },
      shoes: {
        name: "shoes",
      },
    },

  }
  shopping_cart =[]
  store_end = true
  while store_end == true
    prompt = "``````````"
    rompt = '~ ~ ~ ~ ~ ~'
    stdin = "-----------"
    puts " _____   ___     ___    ' ____     ____  _____   /_____    ___  ____  _____|     / "
    puts " |    | |     | |    |    |       |    |   |    /   |   | |    |    | |    |    /"
    puts " |____| |     | |    |    |---|   |    |   |   /    |   | |    |____| |    |   /    "
    puts " |____  |     | |    |    ____|   |___/|   |  /     |   | |    |____  |____|  /       "
    puts "Welcome to " + store[:name] + ". Here we have a small selection of clothing at ridiculous prices."
    puts "><><><><><><><><><><><><><><><><>"
    #ap store[:clothes][:jackets]
    #initial start
    puts store[:clothes][:jackets][:name], prompt,
    store[:clothes][:tops][:name],prompt,
    store[:clothes][:bottoms][:name], prompt,
    store[:clothes][:dresses][:name], prompt,
    store[:clothes][:shoes][:name], stdin

    answer1 =$stdin.gets.chomp
    sym1 = answer1.to_sym

    puts stdin
    # puts types of items
    keys = store[:clothes][sym1][:type].keys
    puts keys
    puts prompt
    answer2 = $stdin.gets.chomp
    sym2 = answer2.to_sym
    puts stdin
    #puts colors
    for a in 0..store[:clothes][sym1][:type][sym2][:colors].length-1
      puts store[:clothes][sym1][:type][sym2][:colors][a][:color], "~"
    end
    puts prompt
    answer3 = $stdin.gets.chomp

    for b in 0..store[:clothes][sym1][:type][sym2][:colors].length-1
      if answer3 == store[:clothes][sym1][:type][sym2][:colors][b][:color]
        break
      end
    end
    quantity_item = store[:clothes][sym1][:type][sym2][:colors][b][:quantity]
    price_item = store[:clothes][sym1][:type][sym2][:price]
    puts ". . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . ."
    puts "You're looking at: type: #{answer1} // #{answer2} //color: #{answer3} //quantity: #{quantity_item} // price: #{price_item}"
    puts "buy?"
    answer4 = $stdin.gets.chomp
    if answer4 == "no"
    elsif answer4 == "yes"
      object = {
        type: answer1,
        item: answer2,
        color: answer3,
        price: price_item
      }
      shopping_cart.push(object)
      puts "ok, your item #{object[:type]}-#{object[:item]}-#{object[:color]}-#{object[:price]} is now in your shopping cart."
      puts "ITEMS: #{shopping_cart.length}"
      total_price = 0
      for x in 0..shopping_cart.length-1
        total_price = shopping_cart[x][:price] + total_price
      end
      puts "TOTAL PRICE: #{total_price}"
      puts shopping_cart
    end
    puts "Continue ?"
    answer5 = $stdin.gets.chomp
    if answer5 == "no"
      if shopping_cart.length >= 1
        puts "OK. Would you like to checkout ?"
        answer6 = $stdin.gets.chomp
        if answer6 == "no"
           store_end = false
        elsif answer6 == "yes"
            puts "items: #{shopping_cart}"
            puts "total: #{total_price}"
            puts "this ok?"
            answer7 = $stdin.gets.chomp
              if answer7 == "yes"
                puts "You have completed your entry."
                store_end = false
              end
        end
      end
    end
  end

  #puts [:clothes][sym1][:type][sym2]

  #for b in 0..store[:clothes][sym1][:type].length-1
  #if response2 == [:clothes][sym1][:type][b][:id]
  #  puts ""
  #end
  #end
  #for c in 0..store[:clothes][sym1][:type][b].length-1
  #  puts store[:clothes][sym1][:type][b][:colors][c]
  #end
