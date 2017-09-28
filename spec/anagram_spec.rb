require 'anagrams'

describe Anagrams do

  let(:anagrams) { (Anagrams.new) }

  describe 'return anagrams' do

    it "returns an array of anagrams" do
      expect(anagrams.return_anagrams[0]).to eq ["A", "a"]
      expect(anagrams.return_anagrams[50]).to eq ["AIs", "IAS", "ais", "sai", "AIs", "IAS", "ais", "sai"]
      expect(anagrams.return_anagrams[1000]).to eq ["Alcide", "Alcide", "Alcide"]
      expect(anagrams.return_anagrams[50000]).to eq ["Thorburn's", "Thorburn's", "Thorburn's", "Thorburn's"]
      expect(anagrams.return_anagrams[-1]).to eq ["A", "a"]
    end
  end
end

# Tests condensed into one
