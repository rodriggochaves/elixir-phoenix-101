# Struct exercise

1. why the following doesn't work

```elixir

defmodule User do
  defstruct name: "John", age: 27
end

iex> %user{name: "Meg"}
```
2. Why are structs called bare maps and what this causes?

3. What happens in the following pattern matches?

```elixir

defmodule User do
  defstruct [:id, :name, :age]
end

=> %User{age: 22} = %User{name: "Name", age: 22}

user = %User{age: 22}
=> ^user = %User{name: "Name", age: 22}

=> %{age: 22} = %User{name: "Name", age: 22}

=> %User{} = %User{id: 1, name: "Name", age: 22}

id = 1
=> %{id: ^id} = %User{id: 1, name: "Name", age: 22}
```

4. Why the first pattern match works and the second doesn't?
```elixir
key = :name
=> %{^key => value} = %User{id: 1, name: "Name", age: 22}
=> %User{^key => value} = %User{id: 1, name: "Name", age: 22}
```
