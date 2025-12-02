my_input = File.readlines("day02/input.txt")
productid_ranges =  my_input[0].split(',')

invalid_ids = []

productid_ranges.each do |range|
  first_id, last_id = range.split("-")
  for id in [first_id...last_id]
    puts id
  end
end

for num in [1, 2, 3]
  puts num
end
