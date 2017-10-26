1. What happens in the following pattern matches?
```elixir
=> [{:fruit, "apple"}, {:language, "English"}] = [fruit: "apple", language: "English"]
=> [{"fruit", "apple"}, {"language", "English"}] = ["fruit": "apple", "language": "English"]
=> [{:fruit, "apple"}, {:language, "English"}] = ["fruit": "apple", "language": "English"]
=> [fruit: "apple"] = [fruit: "apple", language: "English"]
=> [language: "English", fruit: "apple"] = [fruit: "apple", language: "English"]
```

2. What is the result of the `keyword[:fruit]` operation?
```elixir
iex> keyword = [fruit: "apple", language: "English"] ++ [fruit: "banana"]
iex> keyword[:fruit]
# => ?
```

3. Make a anonymous function `fun` that will print the sum of the items in the following example
```elixir
iex> exams = [exam1: 8.0, exam2: 5.0]
iex> List.foldr exams, 0, fun
13.0
```

4. What will be printed in the `=> ?` ?
```elixir
iex> map = %{"name" => "Urilauro", age: 50}
%{:age => 50, "name" => "Urilauro"}
iex> map.name
=> ?
iex> map[:gender]
=> ?
iex> map["name"]
=> ?
iex> map[:age]
=> ?
iex> map.age
=> ?
iex> map[:gender]
=> ?
```

5. whats the result of:
```elixir
iex> map = %{name: "P 1", age: 21}
iex> n = :name
iex> %{map | ^n => "P 2"}
=> ?
```
why?

6. Explain the match error.
```elixir
iex> map = %{start: "12:00", end: "13:00"}
iex> %{map | start: "12:30"}
iex> ^map = %{start: "12:30", end: "13:00"}
** (MatchError) no match of right hand side value: %{end: "13:00", start: "12:30"}
```
