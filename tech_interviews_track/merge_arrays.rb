require 'benchmark'

def merge_arrays_one(a, b)
  # make new array
  # shift an element off of each
  # compare elements and add the lowest to new array
  # stuff unused element back onto array
  merged = []
  combined_length = a.length + b.length
  until merged.length == combined_length do
    a_el = a.shift
    b_el = b.shift 
    
    if a_el.nil?
      merged << b_el
    elsif b_el.nil?
      merged << a_el
    elsif a_el < b_el
      merged << a_el
      b.unshift b_el
    elsif b_el < a_el
      merged << b_el
      a.unshift a_el
    elsif a_el == b_el
      merged << a_el
      merged << b_el
    end
  end
  p merged
end

def merge_arrays_two(a, b)
  merged = []
  while !a.empty? && !b.empty? do
    if a.first < b.first
      merged << a.delete_at(0)
    else
      merged << b.delete_at(0)
    end
  end
  merged += a; merged += b
  p merged
end
time_test_01 = Benchmark.realtime do 

end

def merge_arrays_three(a, b)
  merged = a + b
  p merged.sort
end

a_test_one = [2, 3, 7, 8, 8]
b_test_one = [7, 8, 13]

TimeTest01 = Benchmark.realtime do
  100000.times { merge_arrays_one(a_test_one, b_test_one) }
end

TimeTest02 = Benchmark.realtime do 
  100000.times { merge_arrays_two(a_test_one, b_test_one) }
end

TimeTest03 = Benchmark.realtime do
  100000.times { merge_arrays_three(a_test_one, b_test_one) }
end

puts TimeTest01
puts TimeTest02
puts TimeTest03
