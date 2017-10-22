# Exercises

01. So we going to learn Ladeira's "casamento de padrão". First
of all, we have been lying all this time. What the name of the operator below:
Tip: It's not an assigment operator!
```
iex> x = 1
```

02. Pattern matching works on both sides? In other words, Can I match a variable
on the left side?
```elixir
iex> 1 = x
...?
```

03. Go to internet, talk to your team, find in some fucking place an example of
a simple pattern matching using more than 2 variables. Use 'iex' to test your
example.
```
iex> ...?
```

04. Match a variable `b` to all elemets of the list `a = [1,2,3,4]` except `1`.
```
iex> ...?
```
05. Observe the code below.
```
{:ok, result} = {:error, :oops}
```
  - What is the name of the exception raised?
  - Make it work now changing only one element! ;D

06. Explain why we don't use `if` statements very often in Elixir. Which statement
are more used and how?

07. Pin Operator! What the fuck? Observe the code below and explain what's happening?
```elixir
iex> x = 1
1
iex> ^x = 2
** (MatchError) no match of right hand side value: 2
iex> { y, ^x } = { 2, 1 }
{ 2, 1 }
```

  - Make it work changing the right side of the last expression.
