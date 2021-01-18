defmodule Mf do
  #  Exercise: ModulesAndFunctions-4
  def sum(1) do
    1
  end

  def sum(n) do
    n + sum(n-1)
  end
  #  Exercise: ModulesAndFunctions-4

  def gcd( x , 0 ) do
    x
  end
  def gcd(x,y) do
    gcd( y , rem(x,y) )
  end
end
