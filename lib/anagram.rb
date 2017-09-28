require 'open-uri'

class Anagram

  attr_reader :word_array

  def initialize
    @content = open('http://codekata.com/data/wordlist.txt')
    @word_array = []
  end

  def text_to_array
    @content.each_line do |line|
      @word_array << line
    end
  end
end
