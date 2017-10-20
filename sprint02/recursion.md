# Exercises:

Recursion BOOOOOOOOOOOOY!

I'm pretty sure you know very well what's recursion is. If not, make sure everyone 
knows.

01. Look to the code below. Transform it in a recursion function:

```elixir
for(i = 0; i < sizeof(array); i++) {
  array[i] = array[i] * 2;
}
```

Observation: remenber a function can have many headers with different parameters.

02. Refactor the code you done in question `01` usign guard in functions.

If you forget what is a guard, look the example below:

```elixir
def print_multiple_times(msg, n) when n <= 1 do
```

So, recursion have some powerfull utility. Look the code below:

```elixir
defmodule Math do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end
```

03. Show me what this function got. What I mean? Given the initial parameters,
[1,2,3,4,5] and 7, show all iterations functions call!

But this don't represent the real world. What I mean? Functions like above are
very commom so Elixir created a module to handle this, called `Enum`.

04. You're ruby developers, so the two next snippets should be not strange to 
you guys. Explain what are been done in which one of them:

(a)

```elixir
iex> Enum.reduce([1, 2, 3], 0, fn(x, acc) -> x + acc end)
6
```

(b)

```elixir
iex> Enum.map([1, 2, 3], fn(x) -> x * 2 end)
[2, 4, 6]
```

05. What's the name of the structure `fn(x) -> x * 2 end`. 

Tip: Javascript also defines
with the same name.

06. Use `Enum.reduce` to calculate sum of the list `[1,2,3,4]` starting with 7.