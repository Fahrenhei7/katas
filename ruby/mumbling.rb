accum("abcd")    # "A-Bb-Ccc-Dddd"
accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt")    # "C-Ww-Aaa-Tttt"

def accum(s)
	s.chars.each_with_index.map { |c, i| (c * (i + 1)).capitalize }.join('-')
end
