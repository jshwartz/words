
class String
  define_method(:word_puzzle) do
    result = self.split("")
    vowells = ["a","e","i","o","u"]

    result.map!{ |letter|
      if vowells.include? letter.downcase
        letter = "-"
      else
        letter
      end
    }
    result.join
  end
end
