=begin
1. find first prime factor
2. Set loop to only look up to the num devided by last prime found.
3. check if last prime is the same as prime just found. if so. put that in array and return
=end

def is_this_prime(i)
  check = (2..i-1).all? {|n| !(i % n == 0)}
  check
end

def find_poten_primes(num)
  i = 1
  potential_primes =  Array.new

  while i < num

   if num  % i == 0
     if is_this_prime(i)
        potential_primes.push(i)
        num = num/i
       puts "num= #{num}"
     end
   end

      i += 2
    if i == num
      potential_primes.push(i)
    end
  end
  return  potential_primes
end

  def largest_prime_factor(num)
    primes = find_poten_primes(num)
    primes.max
  end

