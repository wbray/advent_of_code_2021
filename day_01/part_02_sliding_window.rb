@depth_scan = File.readlines("input.txt", chomp: true)
@depth_scan.map!(&:to_i)

def calculate_increments
  previous = @depth_scan[0, 3].sum
  increased_depth = 0

  @depth_scan.each_with_index do |_, index|
    break if index == @depth_scan.count - 2
    summed_window = @depth_scan[index, 3].sum
    puts "Window #{@depth_scan[index, 3]} Sums: #{summed_window}"
    increased_depth += 1 if summed_window > previous
    previous = summed_window
  end

  increased_depth
end

puts "Number of times depth increased: #{calculate_increments}"