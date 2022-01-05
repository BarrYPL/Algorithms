if ARGV.length != 2
  puts "Wrong number of arguments, use only 2 of them..."
  puts "ex. euclidean_algorithm.rb 1 2"
  exit
end

if ARGV[0] > ARGV[1]
  bigger_number = ARGV[0].to_i
  smaller_number = ARGV[1].to_i
else
  bigger_number = ARGV[1].to_i
  smaller_number = ARGV[0].to_i
end

rest = bigger_number%smaller_number

while rest != 0
  nrest = smaller_number % rest
  smaller_number = rest
  rest = nrest
end

puts smaller_number
