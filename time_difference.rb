def my_min1(arr)
  arr.each do |examine|
    smallest = true
    arr.each do |compare|
      smallest = false if compare < examine
    end
    return examine if smallest
  end
end

a = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min1(a)

def my_min2(arr)
  smallest = arr.first
  arr.each do |el|
    smallest = el if el < smallest
  end
  smallest
end
p my_min2(a)

def largest_sub_arr1(arr)
  results = []
  arr.each_index do |i|
    (i+1...arr.length).each do |j|
      results << arr[i..j]
    end
  end
  results.map do |subset|
    subset.sum
  end.sort[-1]
end

def largest_sub_arr2(arr)
  return arr.max if arr.all?{|el| el <= 0}
  largest = arr.first
  current = 0
  arr.each do |el|
    current += el
    current = 0 if current < 0
    largest= current if current > largest
  end
  largest
  #make sure to account for an array with all negative values (return array.max)
end



list = [2, 3, -6, 7, -6, 7]
p largest_sub_arr2(list)
