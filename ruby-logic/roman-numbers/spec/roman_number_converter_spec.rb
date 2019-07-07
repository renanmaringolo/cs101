require_relative '../lib/roman_number_converter'

describe RomanNumberConverter do
  describe '.convert' do
    it 'converts basic numbers' do
      expect(described_class.convert(1)).to eq('I')
      expect(described_class.convert(5)).to eq('V')
      expect(described_class.convert(10)).to eq('X')
      expect(described_class.convert(50)).to eq('L')
      expect(described_class.convert(100)).to eq('C')
      expect(described_class.convert(500)).to eq('D')
      expect(described_class.convert(1000)).to eq('M')
      expect(described_class.convert(6)).to eq('VI')
    end
  end
end
