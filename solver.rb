class Solver
  def factorial(n)
    return 'Error' if n == nil?
    return 'Wrong value specified' if n < 0
    return n * factorial(n - 1)  if n > 0 
    return 1 if n == 0
  end
end

