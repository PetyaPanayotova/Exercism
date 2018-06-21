class Prime
  def self.nth(n)
    raise ArgumentError if n == 0

    primes_found = 0
    current_number = 1

    loop do
      current_number += 1

      if (2..Math.sqrt(current_number)).none? { |divisor| current_number % divisor == 0 }
        primes_found += 1
        
        return current_number if primes_found == n
      end
    end
  end

  #   while primes_found < n
  #     current_number += 1
  #
  #     if (2..Math.sqrt(current_number)).none? { |divisor| current_number % divisor == 0 }
  #       primes_found += 1
  #     end
  #   end
  #
  #   current_number
  # end
end
