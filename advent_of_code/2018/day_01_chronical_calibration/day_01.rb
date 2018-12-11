# --- Part One ---

frequency = 0
result = []

File.open('input.txt').each do |line|
  frequency += line.to_i
end

puts frequency

# --- Part Two ---

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
