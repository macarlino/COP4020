-module (logger). 
-export ([start/0]). 

start() ->
	spawn(fun() -> loop([]) end).

loop(Entries) ->
	receive
		{Pid, log, Entry} ->
			Pid ! {self(), logged},
			loop([Entries|Entry]);
		{Pid, fetch} ->
			Pid ! {self(), log_is, Entries}
	end,
	loop(Entries).   
