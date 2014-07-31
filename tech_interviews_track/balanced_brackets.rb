# Balanced brackets
# Given a string of open and closed brackets output "Balanced" if the brackets are balanced or "Unbalanced" otherwise.
# A string is balanced if it consists entirely of pairs of opening/closing brackets (in that order), none of which mis-nest.
# Expected complexity: O(N)
# Example input:
# (())())
# Example output:
# Unbalanced
# Example input:
# (()())
# Example output:
# Balanced

def balanced_brackets(s)
  until s.slice(/\(\)/).nil?
    s.slice!(/\(\)/)
  end
  if s.empty?
    puts "Balanced"
  else
    puts "Unbalanced"
  end
end

test_one = "(()())"
test_two = "(())())"
test_three = "())(()"

balanced_brackets(test_one)
balanced_brackets(test_two)
balanced_brackets(test_three)
