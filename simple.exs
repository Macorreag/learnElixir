# This is Hello World
IO.puts "Hello world from Elixir"

myName = "Miller"

# This is a reverse String Function
myReversedName = String.reverse(myName)
#IO.puts myReversedName

{ :ok , myBirthday } = Date.new(1997, 06, 05)

myDayOfBirthday = Date.day_of_week( myBirthday )


IO.puts( myDayOfBirthday  )


# For obtain help use 👉 "h" example:
# h(String.reverse())
# This provide help for the function "String.reverse()"


# You can personalize the Interactive Elixir in .iex.exs


## Comparison Operators

a = 1
b = 1.0
IO.puts a === b # Comparison with a a type of variable
IO.puts a !== b # Comparison with a a type of variable


## Boolean Operators
## Esperan value of _true_ and _false_ .

IO.puts true or false
IO.puts true or true
IO.puts ( not false )

# Relaxed Boolean Operators
# This operatos take arguments of any type. Other value diferent to nil or false is
# interpreted like true
IO.puts nil || true || false

# Arithmetic Operators
# +- * div rem
IO.puts (rem(-11,3))   # Resto con signo del primer argumento
IO.puts (div(-11,3))   # Division entera con signo


# Join operators
IO.puts "Hola" <> "Mundo"
a = [1,2] ++ [3,4]
# list1 -- list2
# concatenates two binaries (Later we'll
# see that binaries include strings.)
# concatenates two lists
# removes elements of list 2 from a copy of list 1

IO.puts hd(a)
IO.puts tl(a)  # No imprime pues puts solo imprime Strings
IO.inspect tl(a)  # Imprime un termino de elixir arbitrario

line_no = 50

## Bad practice
if (line_no == 50) do
    IO.puts "new-page\f"
    line_no = 0
end

IO.puts line_no


integer = 1

# Una mala forma de escribir el alcance, ya que se puede olvidar definir
# la variable atom

case integer do
	1 -> atom = :one
	2 -> atom = :two
end

# Aquí genera error
# IO.puts(atom)

# Por lo tanto se puede reemplazar con


atom =
	case integer do
		1 -> :one
		2 -> :two
	end

IO.puts(atom)

####################################


#Function Prefix

prefix = fn a	->  (
			fn b -> a <> b end )
				end
prefix.("Hola").("Mundo")


##Listas y tuplas se pueden transformar en funciones

divrem = &{ div( &1 , &2 ) , rem( &1,&2)}
IO.inspect divrem.(13,5)


## String y similares convertidos a funciones

match_end = &~r/.*#{&1}$/
IO.puts ("cat" =~ match_end.("t"))
IO.puts ("cat" =~ match_end.("!"))

##
IO.inspect( Enum.map [1,2,3,4] , &(&1+2) )
Enum.map [1,2,3,4] , &(IO.inspect(&1))  # Enum.map [1,2,3,4] , fn x -> IO.inspect(x) end
