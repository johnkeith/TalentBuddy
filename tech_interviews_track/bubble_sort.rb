require 'benchmark'

def sort_students(numbers)
    resorted = true
    until resorted == false do
        resorted = false
        (0...numbers.length - 1).each do |index|
            if numbers[index] > numbers[index + 1]
                numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
                resorted = true
            end
        end
    end
    numbers
end

def sort_students_two(numbers)
    numbers.each_index do |i|
        (numbers.length - i - 1).times do |n|
            if numbers[n] > numbers[n + 1]
                numbers[n], numbers[n + 1] = numbers[n + 1], numbers[n]
            end
        end
    end
    numbers
end


test_one = [1, 9, 4, 5, 7]
test_two = [5, 3, 5, 2]
test_three = [2, 9, 12, 7, 4]

sort_students(test_one)
sort_students(test_two)
sort_students(test_three)

TimeTest01 = Benchmark.realtime do
    100000.times { sort_students(test_one) }
end

TimeTest02 = Benchmark.realtime do
    100000.times { sort_students_two(test_one) }
end

p "Results test one #{TimeTest01}"
p "Results test two #{TimeTest02}"
