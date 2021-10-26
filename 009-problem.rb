def find_pythagorean_triplet
  (1..1000).each do |i|
    (1..1000).each do |j|
      break if i < j
      a = Math.sqrt(i**2 - j**2)
      b = 1000 - i - j

      return [a, i, j] if a == b
    end
  end
end

puts find_pythagorean_triplet
