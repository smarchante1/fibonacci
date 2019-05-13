# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n)
# Space complexity: O(1)

# RECURSIVE SOLUTION
def fibonacci(n)
  raise ArgumentError if n.nil? || n < 0
  if n == 0 
    return 0
  end

  if n == 1
    return 1
  end

  return fibonacci(n-1) + fibonacci(n-2)
end


# ITERATIVE SOLUTION

def fibonacci(num)
  raise ArgumentError if num.nil? || num < 0

  x = 0
  y = 1

  num.times do
    sum = x + y
    x = y
    y = sum
  end

  return x
end