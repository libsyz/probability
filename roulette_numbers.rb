
Number = Struct.new(:ord, :color)


r_array = []
(0..60).to_a.each do |el|
  if el == 0
    r_array << Number.new(0, 'green')
  elsif el.odd?
    r_array << Number.new(el, 'red')
  else
    r_array << Number.new(el, 'black')
  end
end

puts r_array


# union of red and third quarter
puts r_array.select {|el| el.ord >= 31 && el.color == 'red' }.count


