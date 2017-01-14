random = rand(1..100).to_i
if rand == 1
  puts "penny"
elsif rand == 5
  puts "nickel"
elsif rand == 10
  puts "dime"
elsif rand == 25
  puts "quarter"
else
  puts "no coin"
  puts rand
end
