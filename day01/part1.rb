# the dial has numbers 0 to 99 arranged in a circle. instructions are L[no.] or R[no.]. We need to count homw many times the dial rests at 0. It starts at 50.
#
# need to store the input which is an html file with thousands of single line instrucitons
#


myInput = File.readlines("day01/input.txt")
myInput.map! { |input| input.chomp }

zeroCount = 0
currentPosition = 50
DIAL_SIZE = 100

# alternative from gpt:
# direction = input[0]
# magnitude = input[1..].to_i

myInput.each do |input|
  magnitude = input.delete('LR').to_i
  if input.chr == "L"
    currentPosition = (currentPosition - magnitude) % DIAL_SIZE
  else
    currentPosition = (currentPosition + magnitude) % DIAL_SIZE
  end
  zeroCount += 1 if currentPosition == 0
end

print "Part 1: "
puts zeroCount


