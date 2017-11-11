require_relative 'fibonnaci_recursive'
require 'benchmark'

Benchmark.bm do |bm|
  bm.report('fibonnaci_recursive: ') {fib(20)}
end
