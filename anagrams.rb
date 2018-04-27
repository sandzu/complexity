# def first_anagram?(string, target)
#   anagrams = []
#   permutations = string.chars.permutation do |anagram|
#     anagrams << anagram.join
#   end
#   anagrams.include?(target)
# end

def first_anagram?(string, target)
  permutations = string.chars.permutation.to_a.map do |arr|
    arr.join
  end
  permutations.include?(target)
end

def second_anagram?(string, target)
  string = string.chars
  target = target.chars
  string.each_index do |index|
    if target.include?(string[index])
      #delete char in target at index appearing in target
      p nd_index = target.index(string[index])
      p "^^^^^"
      target[nd_index] = nil  #arget.delete_at(index) #returns deleted element
      string[index] = nil #char = nil # string = string.delete_at(string.index(char))
      p string
      p target
    end
  end
  p string.compact!
  p target.compact!
  string.empty? && target.empty?
end

def third_anagram?(string, target)
  string.chars.sort == target.chars.sort
end

def fourth_anagram?(string, target)
  string_counter = Hash.new(0)
  target_counter = Hash.new(0)

  string.chars.each do |char|
    string_counter[char] += 1
  end

  target.chars.each do |char|
    target_counter[char] += 1
  end

  string_counter == target_counter
end

p fourth_anagram?("gizmo", "sally")
