fizzBuzz =
	fn
		( 0 , 0 , _ )  ->  "FizzBuzz."
		( 0 , _ , _ )  ->  "Fizz."
		( _ , 0 , _ )  ->  "Buzz."
		( _ , _ , c )  ->  c
	end

IO.puts fizzBuzz.(1 ,1 ,1)


remainder = fn n -> fizzBuzz.(
						rem( n , 3),
						rem( n , 5),
						n
						)
			end

IO.puts( remainder.( 10 ) )
IO.puts( remainder.( 11 ) )
IO.puts( remainder.( 12 ) )
