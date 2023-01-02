require './caesar-cipher'

describe "#caesar_cipher" do
  it "works with lowercase letters" do
    expect(caesar_cipher('test', 1)).to eql('uftu')
  end

  it "works with uppercase letters" do
    expect(caesar_cipher('TEST', 1)).to eql('UFTU')
  end

  it "works with both upper and lowercase lettesr" do
    expect(caesar_cipher('TeSt', 1)).to eql('UfTu')
  end

  it "works with spaces" do
    expect(caesar_cipher('Test Test', 1)).to eql('Uftu Uftu')
  end
  
  it "works with special characters" do
    expect(caesar_cipher('Test & Test !!', 1)).to eql('Uftu & Uftu !!')
  end

  it "works with negative shift" do
    expect(caesar_cipher('test', -1)).to eql('sdrs')
  end

  it "works with large shift" do
    expect(caesar_cipher('test', 67)).to eql('ithi')
  end

end