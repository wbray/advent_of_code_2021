@vector_list = File.readlines("input.txt", chomp: true)

depth, horiz = 0, 0

@vector_list.each do |vector|
  direction, magnitude = vector.split(' ')
  magnitude = magnitude.to_i

  case direction
  when 'forward'
    horiz += magnitude
  when 'up'
    depth -= magnitude
  when 'down'
    depth += magnitude
  else 
    raise 'Unrecognised direction!'
  end
end

puts "Final position (x/y): #{horiz}/#{depth}"
puts "Final calculation: #{horiz * depth}"