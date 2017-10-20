# PingPong

In this exercise we need to implement a receive loop. the receive will need to pattern match a tuple containing {:ping, sender_pid} or {:pong, sender_pid} and send the opposite to the sender. run `mix test` to check if your implementation is correct.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ping_pong` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ping_pong, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ping_pong](https://hexdocs.pm/ping_pong).
