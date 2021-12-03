diag_report = File.readlines("input.txt", chomp: true)

column_max = diag_report.first.length
gamma = ''
epsilon = ''

column_max.times do |index|
  bit_counts = diag_report.map{ |row| row[index] }.tally
  gamma << bit_counts.max_by(&:last).first
  epsilon << bit_counts.min_by(&:last).first
end

puts "Power consumption: #{gamma.to_i(2) * epsilon.to_i(2)}"