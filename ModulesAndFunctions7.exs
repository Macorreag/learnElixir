# – Convert a float to a string with two decimal digits. (Erlang)

IO.puts :io.format("The number is ~3.1f~n", [5.678])

# – Get the value of an operating-system environment variable. (Elixir)

System.get_env("LANG")

# – Return the extension component of a file name (so return .exs if given
# "dave/test.exs" ). (Elixir)

[ h , t ] = Regex.split(~r{\.}, "dave/test.exs", trim: true)
IO.inspect( t  )

# – Return the process’s current working directory. (Elixir)

IO.inspect( File.cwd!  )

# – Convert a string containing JSON into Elixir data structures. (Just
# find; don’t install.)

# I can use Poison Library
# defimpl Poison.Encoder, for: Person do
#   def encode(%{name: name, age: age}, options) do
#     Poison.Encoder.BitString.encode("#{name} (#{age})", options)
#   end
# end
