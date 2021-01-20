defmodule MyList do
  def len([]),               do: 0
  def len([ _head | tail ]), do: 1 + len(tail)

  def square([]),              do: []
  def square([ head | tail ]), do: [ head*head | square(tail) ]

  def add_1([]),              do: []
  def add_1([ head | tail ]), do: [ head+1 | add_1(tail) ]

  def map([], _func),             do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _func),  do: []
  def mapsum([ head | tail ], func)  do
    reduce( [ func.(head) | map(tail, func) ] , 0 , &(&1 + &2) )
  end
end



IO.puts MyList.mapsum [1, 2, 3], &(&1 * &1)
IO.puts MyList.mapsum [ 3], &(&1 * &1)
