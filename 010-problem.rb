# To solve this problem I had to reduce the time complexity
# of an algorithm from O(N^2) to O(Nx√N).
#
# Reducing complexity actualy removed uneccessary and duplicate work.

def prime_numbers_until(n)
  prime_numbers = []
  for i in 2...n
    prime_numbers << i if prime?(i)
  end

  prime_numbers
end

def prime?(n)
  for i in 2...(Integer.sqrt(n) + 1)
    if n % i == 0
      return false
    end
  end

  true
end

start = Time.now.to_i
puts "Sum: #{prime_numbers_until(2_000_000).sum}"
stop = Time.now.to_i

puts "Calculation took: #{(stop - start)} seconds"
