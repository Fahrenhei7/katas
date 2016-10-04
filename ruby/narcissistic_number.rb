# A Narcissistic Number is a number which is the sum of its own digits,
# each raised to the power of the number of digits.

def narcissistic?( value  )
  exponent = value.to_s.length
  value == value.to_s.split.map { |d| d = (d.to_i ** exponent)  }.reduce(:+)
end

def narcissistic_2?( value )
  value == value.to_s.chars.map { |x| x.to_i**value.to_s.size }.reduce(:+)
end
