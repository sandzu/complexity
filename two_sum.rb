def bad_two_sum?(arr, target)
  arr.combination(2).any?{|x,y| return true if x+y == target}
  #combination  run time quadratic
end


arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false
