def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?)[0]
end

puts find_outlier([2,4,6,8,7])
