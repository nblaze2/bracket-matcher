require 'pry'
def bracket_match?(string)
  characters = string.split('')
  stack = []
  characters.each do |character|
    if character == '('
      stack.push(character)
    elsif character == ')'
      return false if stack.empty?
      stack.pop
    end
  end
  stack.empty?
end

str1 = 'abc(d(e)f)g)(h)i'
str2 = 'abc)d(e)f)g(h)(i'
str3 = '(((((())))))'
str4 = '(abc)(def)(ghi)'
str5 = '(a(bcd(e(f)ghi)))'
str6 = 'abc(defghi'
print "#{str1}: "
puts bracket_match?(str1)
print "#{str2}: "
puts bracket_match?(str2)
print "#{str3}: "
puts bracket_match?(str3)
print "#{str4}: "
puts bracket_match?(str4)
print "#{str5}: "
puts bracket_match?(str5)
print "#{str6}: "
puts bracket_match?(str6)
