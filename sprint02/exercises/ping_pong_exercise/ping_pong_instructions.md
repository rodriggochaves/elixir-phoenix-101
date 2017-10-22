# Ping Pong instructions

In this exercise we have a processes that will respond to pings and pongs.
- If our processes has a tuple `{:ping, pid}` in its mailbox it will send back to `pid` a tuple `{:pong, own_pid}`.
- If it has `{:pong, pid}` it will send back `{:ping, own_pid}`
- the process needs to answer every message sent to him after it was started (tip: use recursion)

Implement this in the file `ping_pong/lib/ping.ex`. Run `mix test` in `ping_pong/` to see if you implementation meets the requirements.
