class LargestPrimeFactor
  def initialize(num)
    @num = num
  end

  def num= (num)
    @num = num
  end

  def num
    @num
  end



  def is_this_prime(i)
    check = (2..i-1).all? {|n| !(i % n == 0)}
    check
  end

  def find_poten_primes
    i = 1
    potential_primes =  Array.new

    while i < @num

     if @num  % i == 0
       if is_this_prime(i)
          potential_primes.push(i)
          @num = @num/i

       end
     end

        i += 2
      if i == @num
        potential_primes.push(i)
      end
    end
    return  potential_primes
  end

  def number
    primes = find_poten_primes
    primes.max
  end
end
# Enter your object-oriented solution here!
