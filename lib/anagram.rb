require 'pry'
class Anagram
 attr_accessor :word

 def initialize(word)
 	@word = word
 end

 def match(array)
    box = []
    words = @word.chars.to_a.permutation.map(&:join)
   #n =0
   #until n > words.count 
   array.each do |x|
     words.each do |t|
       if x == t
        box << t
       end
     end
  
   end
   return box.uniq
 end

end
 
  # def all_possible_permutations
  #   self.chars.to_a.permutation.map(&:join)
  # end