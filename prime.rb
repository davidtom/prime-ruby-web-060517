def prime?(n)
  if n < 2
    false
  else
    #Get divisors up to sqrt(n) (all others will be repeats)
    divisors = (2..Math.sqrt(n))

    #Go through divisors and see if any can divide fully (ie no remainder)
    divisors.each do |divisor|
      return false if n % divisor == 0
    end
    #If no divisor can fully divide, number must be prime: return true
    return true
  end
end
