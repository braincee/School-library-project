class Solver
  def factorial(number)
    return 'Error' if number == nil?
    return 'Wrong value specified' if number.negative?
    return number * factorial(number - 1) if number.positive?
    return 1 if number.zero?
  end

  def reverse(string)
    return 'Not a string' if string.class != String
    return 'No value specified' if string.empty? == true

    string.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
  end
end
