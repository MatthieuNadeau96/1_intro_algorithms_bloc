require 'benchmark'
require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'quick_sort'

arr = Array.new(100000){rand(1..250000)}

Benchmark.bm do |bm|
  bm.report ('quick_sort 100,000 items in an array: ') { arr.quicksort }
  bm.report ('heap_sort 100,000 items in an array: ') { heap_sort(arr) }
  bm.report ('bucket_sort 100,000 items in an array: ') { bucket_sort(arr) }
end
