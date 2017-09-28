require 'anagram'

describe Anagram do

  let(:anagram) { (Anagram.new) }

  describe 'text_to_array' do

    it "pushes each line of text into an array" do
      anagram.text_to_array
      expect(anagram.word_array[0]).to eq "A\n"
    end
  end
end
