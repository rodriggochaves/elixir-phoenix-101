defmodule PingPongTest do
  use ExUnit.Case
  doctest PingPong

  test "it responds to a pong with a ping" do
		ping = spawn(Ping, :start, [])
		send(ping, {:pong, self()})
		assert_receive {:ping, ^ping}
	end

  test "it responds to a ping with a pong" do
		ping = spawn(Ping, :start, [])
		send(ping, {:ping, self()})
		assert_receive {:pong, ^ping}
	end

  test "it responds multiple times" do
    ping = spawn(Ping, :start, [])
		send(ping, {:pong, self()})
		assert_receive {:ping, ^ping}
		send(ping, {:ping, self()})
		assert_receive {:pong, ^ping}
  end
end
