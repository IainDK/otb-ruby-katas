require 'open-uri'

class Anagrams

  def initialize
    @word_array = []
  end

  def return_anagrams
    reject_singulars
  end

  def anagram_with_most_words
    reject_singulars.sort { |a, b| b.size <=> a.size }[0].uniq
  end

  private

  def open_file
    open('http://codekata.com/data/wordlist.txt')
  end

  def text_to_array
    open_file.each_line do |line|
      @word_array << line
    end
    @word_array
  end

  def remove_line_breaks
    text_to_array.map { |word| word.gsub("\n", "") }
  end

  def group_words
    remove_line_breaks.group_by { |anagram| anagram.downcase.chars.sort }.values
  end

  def reject_singulars
    group_words.reject { |group| group.size < 2 }
  end
end
