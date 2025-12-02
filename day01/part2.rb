# _______________________________________________________________________
# PART 2: must count every time the dial passes 0 too

my_input = File.readlines("day01/input.txt")
my_input.map! { |input| input.chomp }

zero_count = 0
current_position = 50
DIAL_SIZE = 100

my_input.each do |input|
  magnitude = input.delete('LR').to_i
  x = (magnitude / DIAL_SIZE).to_i
  zero_count += x
  if input.chr == "L"
    current_position = (current_position - magnitude) % DIAL_SIZE
  else
    current_position = (current_position + magnitude) % DIAL_SIZE
  end
  zero_count += 1 if current_position == 0
end

print "Part 2: "
puts zero_count
