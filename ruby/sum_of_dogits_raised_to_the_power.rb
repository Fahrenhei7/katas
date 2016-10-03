# Take a Number And Sum Its Digits Raised To The Consecutive Powers And ....¡Eureka!!
#
#
# The number 89 is the first integer with more than one digit that fulfills
# the property partially introduced in the title of this kata. What's the use
# of saying "Eureka"? Because this sum gives the same number.

# In effect: 89 = 8^1 + 9^2

# The next number in having this property is 135.

# See this property again: 135 = 1^1 + 3^2 + 5^3

# We need a function to collect these numbers, that may receive two integers a,
# b that defines the range [a, b] (inclusive) and outputs a list of the sorted
# numbers in the range that fulfills the property described above.

#Let's see some cases:


#  sum_dig_pow(1, 100) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]
#  Test.assert_equals(sum_dig_pow(90, 150), [135])
#  Test.assert_equals(sum_dig_pow(50, 150), [89, 135])
#  Test.assert_equals(sum_dig_pow(10, 150), [89, 135])



# If there are no numbers of this kind in the range [a, b] the function should
# output an empty list.


def sum_dig_pow(a, b)
  answer = Array.new
  (a..b).each do |int|
    digits = int.to_s.split //
    digits.map! { |d| (d.to_i ** (digits.index(d) + 1).to_i).to_i }
    sum_of_digits = digits.reduce(:+)
    answer << sum_of_digits if sum_of_digits == int
  end
  return answer
end

def sum_dig_pow_2(a, b)
  (a..b).select do |num|
    num == num.to_s.chars.map.with_index(1) { |d, p| d.to_i ** p }.reduce(:+)
  end
end

p sum_dig_pow(10, 100)
p sum_dig_pow_2(10, 100)
