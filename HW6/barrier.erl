-module(barrier). 
-export([start/1]). 

start(X) ->
	spawn(fun() -> server(X)). 

server(X) ->
	