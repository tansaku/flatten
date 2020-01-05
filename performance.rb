# frozen_string_literal: true

require 'benchmark'
require './lib/flatten'
n = 5_000
array = [1, 2, 3, [2, [3, 4, 5, [5, 6, [7, 8, 9]]]], 4]
Benchmark.bm(7) do |x|
  x.report('this flatten:') { n.times { flatten(array) } }
  x.report('ruby flatten:') { n.times { array.flatten } }
end
