class RomanNumberConverter
  BASIC_NUMBERS_INDEX = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  def self.convert(arabic)
    BASIC_NUMBERS_INDEX[arabic]
  end
end
