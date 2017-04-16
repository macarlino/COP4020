-module(eventdetector).
-export([start/2, loop/3]).

start(InitialState, TransitionFun) -> 
	spawn(?MODULE, loop, [[], InitialState, TransitionFun]).

loop(Observers, State, Fun) ->
	receive
		{Pid, add_me} ->
			Pid ! {added},
			loop([Pid | Observers], State, Fun);
		{Pid, add_yourself_to, EDPid} ->
			EDPid ! {self(), add_me},
			receive
				{added} ->
					Pid ! {added},
					loop(Observers, State, Fun)
			end;
		{Pid, state_value} ->
			Pid ! {value_is, State},
			loop(Observers, State, Fun);
		Atom ->
			{NewState, Event} = Fun(State, Atom),
			if
				Event =:= none ->
					loop(Observers, NewState, Fun);
				true ->
					lists:foreach(fun(F) -> F ! Event end, Observers),
					loop(Observers, NewState, Fun)
			end
	end.
