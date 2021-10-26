def find_pythagorean_triplet
  (1..1000).each do |i|
    (1..1000).each do |j|
      next if j < i
      a = Math.sqrt(j**2 - i**2)
      b = 1000 - j - i

      return [a, i, j] if a == b
    end
  end
end

puts find_pythagorean_triplet
