# solution('camelCasing') # => should return 'camel Casing'

def solution(string)
  string.gsub(/[A-Z]/, ' \0')
end

def solution_2(string)
  string.gsub!(/[A-Z]/) { |c| " #{c}" }
end
