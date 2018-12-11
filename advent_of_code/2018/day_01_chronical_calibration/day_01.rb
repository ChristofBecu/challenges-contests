require 'benchmark'
require 'set'

def part_one
  frequency = 0
  File.open('input.txt').each do |line|
    frequency += line.to_i
  end
  puts frequency
end

# ! takes about 48 seconds !!!
# TODO : a lot!!!
def part_two
  frequency = 0
  result = []
  found = false
  until found
    File.open('input.txt').each do |line|
      frequency += line.to_i
      if result.include?(frequency)
        found = true
        break
      end
      result << frequency
    end
  end
  puts frequency
end

# ruby solutions taken from https://www.reddit.com/r/adventofcode/comments/a20646/2018_day_1_solutions/
# using the set class
# ! takes about 0.07 seconds !!!
def day_1_a
  data = File.readlines('input.txt').map(&:to_i)

  freq = 0
  seen = Set.new
  data.cycle do |num|
    freq += num
    (puts freq; break) unless seen.add?(freq)
  end
end

# ! takes about 0.07 seconds !!!
def day_1_b
  data = File.readlines('input.txt').map(&:to_i)

  freq = 0
  seen = Set.new
  data.cycle do |num|
    freq += num
    (puts freq; break) if seen.include?(freq)
    seen.add(freq)
  end
end

Benchmark.bm do |bm|
  bm.report { part_two }
  bm.report { day_1_a }
  bm.report { day_1_b }
end
