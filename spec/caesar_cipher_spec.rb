# spec/string_calculator_spec.rb
require "caesar_cipher"

describe ".caesar_cipher" do

  context "given an empty string with no number" do
    it "returns an empty string" do
      expect(caesar_cipher("")).to eql("")
    end
  end

  context "given an empty string with a number" do
    it "returns an empty string" do
      expect(caesar_cipher("", 5)).to eql("")
    end
  end

  context "given non-alphanumeric input with no number" do
    it "returns the same input string" do
      expect(caesar_cipher("!!**$$")).to eql("!!**$$")
    end
  end

  context "given non-alphanumeric input with a number" do
    it "returns the same input string" do
      expect(caesar_cipher("!!**$$", 6)).to eql("!!**$$")
    end
  end

  context "going past z in the alphabet" do
    it "loops the alphabet around to a" do
      expect(caesar_cipher("xyz", 3)).to eql("abc")
    end
  end

  context "given a negative number" do
    it "moves the alphabet backwards" do
      expect(caesar_cipher("cde", -1)).to eql("bcd")
    end
  end
end
