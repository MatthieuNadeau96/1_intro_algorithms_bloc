require_relative 'fibonnaci_iterative'
require 'benchmark'

Benchmark.bm do |bm|
  bm.report('fibonnaci_iterative: ') do
    fibonnaci(20)
  end
end
