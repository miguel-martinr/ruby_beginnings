grades = [1,2,3,4]

sum = 0

grades.each do |grade|
  sum += grade
end

mean = sum.to_f / grades.length

puts "Media: #{mean}"
