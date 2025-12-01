# the dial has numbers 0 to 99 arranged in a circle. instructions are L[no.] or R[no.]. We need to count homw many times the dial rests at 0. It starts at 50.
#
# need to store the input which is an html file with thousands of single line instrucitons
#

myInput = []
myInput = File.readlines("day01/input.txt")
# myInput.chop!
startingPosition = 50
currentPosition = startingPosition
zeroCount = 0

myInput.each do |input|
  puts input[1..-1]
  if input.chr == "L"
    currentPosition -= input[1..-1].to_i
  else
    currentPosition += input[1..-1].to_i
  end
  puts currentPosition
end
