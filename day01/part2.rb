# _______________________________________________________________________
# PART 2: must count every time the dial passes 0 too

my_input = File.readlines("day01/input.txt")
my_input.map! { |input| input.chomp }

zero_count = 0
current_position = 50
DIAL_SIZE = 100

my_input.each do |input|
  magnitude = input.delete('LR').to_i
  full_turns, remainder = magnitude.divmod(DIAL_SIZE)
  zero_count += full_turns
  if input.chr == "L"
    zero_count += 1 if current_position != 0 && remainder >= current_position
    current_position = (current_position - remainder) % DIAL_SIZE
  else
    zero_count += 1 if current_position != 0 && remainder >= (DIAL_SIZE - current_position)
    current_position = (current_position + remainder) % DIAL_SIZE
  end
end

print "Part 2: "
puts zero_count
