require_relative 'Anagrams'

class PrintAnagrams

  def initialize(anagrams = Anagrams.new)
    @anagrams = anagrams
  end

  def print_all
    print_anagrams
    "\n"
    print_most_words
  end

  def print_anagrams
    string = ""
    @anagrams.return_anagrams.each do |combination|
      string << combination.join(" ") + "\n"
    end
    print string
  end

  def print_most_words
    print "Bonus Fact: The anagram with the most words is #{@anagrams.anagram_with_most_words.join(", ")}"
  end
end
