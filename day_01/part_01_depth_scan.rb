@depth_scan = File.readlines("input.txt", chomp: true)
@depth_scan.map!(&:to_i)

def calculate_increments
  previous = @depth_scan.first
  increased_depth = 0

  @depth_scan.each do |depth|
    increased_depth += 1 if depth > previous
    # puts "#{depth} is #{depth > previous ? '' : 'not '}greater than #{previous} (#{increased_depth})"
    previous = depth
  end 
  increased_depth
end



puts "Number of times depth increased: #{calculate_increments}"