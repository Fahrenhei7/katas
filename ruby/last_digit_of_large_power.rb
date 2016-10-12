# that takes in two numbers a and b and returns the last decimal digit of a^b.
# Note that a and b may be very large!

# For example, the last decimal digit of 9^7 is 9, since 9^7 = 4782969. The last
# decimal digit of (2^200)^(2^300), which has over 10^92 decimal digits, is 6.

LAST_DIGITS = [
  [0],
  [1],
  [2, 4, 8, 6],
  [3, 9, 7, 1],
  [4, 6],
  [5],
  [6],
  [7, 9, 3, 1],
  [8, 4, 2, 6],
  [9, 1]
]

def last_digit(base, exp)
  return 1 if exp == 0
  digits = LAST_DIGITS[base % 10]
  digits[(exp - 1) % digits.length]
end


def last_digit_2(n1, n2)
  return n1 % 10 if n2 % 4 == 1
  return (n1 ** 2) % 10 if n2 % 4 == 2
  return (n1 ** 3) % 10 if n2 % 4 == 3
  return 1 if n1.odd? && n1 % 10 != 5 && n2 % 4 == 0 || n2 == 0
  return 6 if n1.even? && n1 % 10 != 0 && n2 % 4 == 0
  return 0 if n1.even? && n1 % 10 == 0 && n2 % 4 == 0
end
