# Exercises

Elixir isn't object oriented. So, we don't have classes. In this exercises,
we going to make the architure of a simple project thinking only in modules.

So, look as these functions:

```elixir
def buy item
def sell item
def park car
def goto place
def close
def open
def alarm_security
def pay_taxes
def calculate_exchange
def find_empty_parking_lot
```

01. Find way to divide this problem in 4 modules. List the name below:

```
1. ...
2. ...
3. ...
4. ...
```

02. How I define these modules in Elixir?

03. List an couple of function to realize these operations. Insert the functions
in module.

04. Thinking as client using this module, how you call these functions:

05. Looking to the functions, make sense a client to see all functions. Oh boy!
It doesn't. Make some of them private.

06. Make a guard in `buy` method so it only accepts a string.

07. Observe this code:

```elixir
iex> fun = &Math.zero?/1
&Math.zero?/1
iex> is_function(fun)
true
```

(a) What're stored in `fun`?

(b) What is represented in `zero?/1`?