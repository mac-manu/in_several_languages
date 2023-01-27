defmodule Factorial do
  def factorial(0), do: 1
  def factorial(n), do: n * factorial(n-1)
end


# to run in terminal 
# iex> Factorial.factorial(5) => 120

defmodule Fibonacci do
  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(n), do: fibonacci(n-1) + fibonacci(n-2)
end

# to run in terminal 
#iex> Fibonacci.fibonacci(5) => 5
