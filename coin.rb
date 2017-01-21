random = rand(1..100).to_i
case random
when random == 1
  puts "penny"
when random == 5
  puts "nickel"
when random == 10
  puts "dime"
when random == 25
  puts "quarter"
else
  puts "no coin"
  puts random
end
