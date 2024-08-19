#Input: num = 3749
#Input: num = 58
#Input: num = 1994




class Integer
  ROMAN_NUMERALS = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }.freeze

  def to_roman
    raise ArgumentError, "Números negativos não são suportados" if self < 0

    number = self
    roman_numeral = ""

    ROMAN_NUMERALS.each do |value, numeral|
      while number >= value
        roman_numeral << numeral
        number -= value
      end
    end

    roman_numeral
  end
end

puts 3749.to_roman    # Saída: MMMDCCXLIX
puts 58.to_roman    # Saída: LVIII
puts 1994.to_roman    # Saída: MCMXCIV