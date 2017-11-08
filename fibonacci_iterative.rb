def fibonacci(num)
  (1..num).inject([0,1]) { |fib| fib << fib.last(2).inject(:+) }
end

puts fibonacci(1)

puts fibonacci(2)

puts fibonacci(3)

puts fibonacci(4)

puts fibonacci(5)

puts fibonacci(6)

puts fibonacci(7)

puts fibonacci(8)

puts fibonacci(9)
