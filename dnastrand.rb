puts "Enter DNA string for a reverse complement and a reversed reverse frame."
strand = $stdin.gets.chomp
array = strand.chars.join()
puts "   your strand:  " + array

reverse_complement = [ ]
reverse_reverse = [ ]
for i in 0..array.length-1
  if array[i] == "A"
    reverse_complement.push("T")
  elsif array[i] == "T"
    reverse_complement.push("A")
  elsif array[i] == "G"
    reverse_complement.push("C")
  elsif array[i] == "C"
    reverse_complement.push("G")
  elsif array[i] == " "
    reverse_complement.push(" ")
  else
    puts "n/a"
  end
end
for i in 0..array.length-1
  reverse_reverse[i] = reverse_complement[array.length-1-i]
end
puts "    reverse    : " + reverse_complement.join()
puts "reverse reverse: " + reverse_reverse.join()
