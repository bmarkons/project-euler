def find_pythagorean_triplet
  (1..1000).each do |i|
    (1..1000).each do |j|
      (1..1000).each do |k|
        return [i, j, k] if (((i * i) + (j * j)) == (k * k)) && ((i + j + k) == 1000)
      end
    end
  end
end

puts find_pythagorean_triplet
