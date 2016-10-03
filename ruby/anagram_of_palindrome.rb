def solution(s)
  raise ArgumentError if (s =~ /^[a-z]{,100000}$/).nil?
  chars = s.scan(/\w/).inject(Hash.new(0)) { |hash, char| hash[char] += 1; hash }
  return false if chars.delete_if { |k,v| v.even? }.length > 1
  true
end

