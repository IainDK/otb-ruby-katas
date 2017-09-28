require_relative 'Anagrams'

class PrintAnagrams

  def initialize(anagrams = Anagrams.new)
    @anagrams = anagrams
    @anagram_string = ""
  end

  def print_all
    print_anagrams
    "\n"
    print_most_words
  end

  def print_anagrams
    @anagrams.return_anagrams.each do |combination|
      @anagram_string << combination.join(" ") + "\n"
    end
    print @anagram_string
  end

  def print_most_words
    print "Bonus Fact: The anagram with the most words is #{@anagrams.anagram_with_most_words.join(", ")}"
  end
end
