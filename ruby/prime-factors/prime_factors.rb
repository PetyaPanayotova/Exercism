class PrimeFactors
  def self.for(number)
    prime_factors = []
    current_check = 2

    while number != 1 do
      if number % current_check == 0
        prime_factors << current_check
        number = number / current_check
      else
        current_check += 1
      end
    end
    prime_factors
  end
end
