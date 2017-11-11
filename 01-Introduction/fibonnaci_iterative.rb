def fibonnaci(num)
  (1..num).inject([0,1]) { |fib| fib << fib.last(2).inject(:+) }
end

puts fibonnaci(1)

puts fibonnaci(2)

puts fibonnaci(3)

puts fibonnaci(4)

puts fibonnaci(5)

puts fibonnaci(6)

puts fibonnaci(7)

puts fibonnaci(8)

puts fibonnaci(9)
