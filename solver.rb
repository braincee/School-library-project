class Solver
  def factorial(n)
    return 'Error' if n == nil?
    return 'Wrong value specified' if n < 0
    return n * factorial(n - 1)  if n > 0 
    return 1 if n == 0
  end

  def reverse(string)
    return "Not a string" if string.class != String
    return "No value specified" if string.empty? == true
    string.reverse
  end

  def fizzbuzz(n)
    return "fizzbuzz" if n % 3 == 0 && n % 5 == 0
    return "fizz" if (n % 3).zero?
    return "buzz" if n % 5 == 0
    "#{n}"
  end 
end
