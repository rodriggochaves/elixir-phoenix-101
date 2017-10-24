# GenServer Exercises

**Questão 1:** 

What GenServer are used for?

For the next questions, look at this code:

```elixir
defmodule Stack do
  use GenServer

  # Callbacks

  def handle_call(:pop, _from, [h | t]) do
    {:reply, h, t}
  end

  def handle_cast({:push, item}, state) do
    {:noreply, [item | state]}
  end
end

# Start the server
{:ok, pid} = GenServer.start_link(Stack, [:hello])

# This is the client
GenServer.call(pid, :pop)
#=> ?

GenServer.cast(pid, {:push, :world})
#=> ?

GenServer.call(pid, :pop)
#=> ?
```

**Questão 2:**

Complete the return of each call of functions.

**Questão 3:**

Look with attetion at the code: `GenServer` module uses the `Stack` module as
callback. What happens when `GenServer.call` and `GenServer.cast` are called.

**Questão 4:**

Pay attetion to this code:

```elixir
{:ok, _} = GenServer.start_link(Stack, [:hello], name: MyStack)
```

How I call this server?

**Questão 5:**

A common behavior is to create the client and server code in the same module. Going back to example to the Stack, complete with the code the
client functions:

**TIP** the code is document.


```elixir
defmodule Stack do
  use GenServer

  # Client

  def start_link(default) do
    GenServer.start_link(__MODULE__, default)
  end

  def push(pid, item) do
    ...
  end

  def pop(pid) do
    ...
  end

  # Server (callbacks)

  def handle_call(:pop, _from, [h | t]) do
    {:reply, h, t}
  end

  def handle_cast({:push, item}, state) do
    {:noreply, [item | state]}
  end
end
```