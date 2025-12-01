# the dial has numbers 0 to 99 arranged in a circle. instructions are L[no.] or R[no.]. We need to count homw many times the dial rests at 0. It starts at 50.
#
# need to store the input which is an html file with thousands of single line instrucitons
#


myInput = File.readlines("day01/input.txt")
myInput.map! { |input| input.chomp }

dialRange = (0..99).to_a
currentPosition = 50
zeroCount = 0

myInput.each_with_index do |input|
  magnitude = input[1..-1].to_i
  if input.chr == "L"
    currentPosition -= magnitude
  else
    currentPosition += magnitude
  end
  # puts currentPosition
  dialRange.cycle.take(magnitude).each do |value|
    zeroCount += 1 if currentPosition[value] == 0
  end

end

puts zeroCount
