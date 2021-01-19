
defmodule Chop do

  def guess( n , first..last ) when n == ( div(last-first,2) + first ) do
    #Condición de parada
    IO.puts "find #{n}"
  end

  def guess( n , first..last ) when n > ( div(last-first,2) + first ) do
   # test = div(last,2)
   IO.puts(div(last-first,2) + first )
   but = div(last-first,2) + first + 1
   guess(n, but..last)
    IO.puts "Mayor"
  end

  def guess( n , first..last )  when n < ( div(last-first,2) + first ) do

   # test = div(last,2)

   IO.puts(div(last-first,2) + first )
   top = div(last-first,2) + first - 1
    guess(n, first..top)
    IO.puts "Menor"
  end


end

range = 1..1000

Chop.guess(273,range)
