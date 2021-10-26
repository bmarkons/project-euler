def biggest_factor(n)
  i = 2
  loop do
    if (n % i) == 0
      return biggest_factor(n / i)
    else
      i += 1
    end

    if i > n / 2
      return n
    end
  end
end

def largest_3_digits_product_palindrome
  palindroms = []

  (100..999).each do |i|
    (100..999).each do |j|
      res = i * j
      str = res.to_s

      if str == str.reverse
        palindroms << res
      end
    end
  end

  palindroms.max
end

def noc_je
  brojac = 20
  loop do
    (1...20).each do |i|
      if (brojac % i) == 0 && i == 20
        return brojac
      elsif (brojac % i) > 0
        brojac += 20
        puts brojac
        break
      end
    end
  end
end

def sum_square_diff(n)
  a = (1..n).sum { |i| i * i }
  b = (1..n).sum
  b = b * b

  b - a
end

def is_prime_number?(num)
  i = 2
  while i < (num / 2) do
    if num % i == 0
      return false
    end

    i += 1
  end

  return true
end

def find_prime_number(n)
  num = 2
  i = 0
  loop do
    if is_prime_number?(num) && i == n
      return num
    elsif is_prime_number?(num)
      i += 1
      puts i
    end

    num += 1
  end
end
