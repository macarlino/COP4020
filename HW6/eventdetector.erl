-module(eventdetector). 
-export([start/2]). 

start(InitialState, TransitionFun) ->
	

	
	receive
		{Pid, add_me} ->
		Pid ! {added}
	end. 