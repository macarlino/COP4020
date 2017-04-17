-module(barrier). 
-export([start/1]). 

start(X) ->
	spawn(fun() -> server(X) end). 

server(X) ->
	receive
		{Pid, done} ->
			Pid ! {self(), ok},
			if X =:= 0 -> 
				Pid ! {self(), continue};
				true -> ok
			end; 
		{Pid, how_many_running} ->
			Pid ! {self(), number_running_is, X},
			server(X)
	end,
	server(X-1). 
