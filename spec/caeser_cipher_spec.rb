require './lib/caeser-cipher'

describe "Caeser Cipher" do
  describe "#caeser_cipher" do
    it "Correctly shifts a string of lower-case characters" do
      expect(caeser_cipher("tttts", 1)).to eql("uuuut")
    end
    it "Correct shifts a string of upper case characters" do
      expect(caeser_cipher("RRRRS", 5)).to eql("WWWWX")
    end
    it "Returns an error when the passed phrase is not a string" do
      expect(caeser_cipher(5000, 1)).to eql("Invalid")
    end
    it "Returns an error when the passed shift value is not an integer" do
      expect(caeser_cipher("Hello", "moo")).to eql("Invalid")
    end
  end
end