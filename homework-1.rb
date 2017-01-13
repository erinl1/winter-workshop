item = ARGV[0]
price = ARGV[1].to_f/1.0
#5-20
interest = rand(5..20).to_i
time = ARGV[2].to_i
total = ((((100.0+interest)/100.0)**time)*price*100).round / 100.0
remainder = ((total - price)*100).round / 100.0
puts "The total amount you would be paying for the #{item} after #{time}
years with a loan of $#{price} and an interest rate of #{interest}% would be
$#{total} and the interest is $#{remainder}."
