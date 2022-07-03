require './main'

describe "#caesar-cipher" do
  it "works on single words" do
    expect(caesar_cipher("bad", 1)).to eql("cbe")
  end

  it "works on multiple words" do
    expect(caesar_cipher("bad bad", 1)).to eql("cbe cbe")
  end

  it "works on upper and lower case" do
    expect(caesar_cipher("baD", 1)).to eql("cbE")
  end

  it "works with punctuation" do
    expect(caesar_cipher("bad!", 1)).to eql("cbe!")
  end

  it "wraps from z to a" do
    expect(caesar_cipher("badz", 1)).to eql("cbea")
  end
end
