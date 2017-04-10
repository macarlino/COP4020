-module (logger). 
-export ([start/0]). 

start() ->
	spawn(fun() -> loop([]) end).

loop(Entries) ->
	receive
		{Pid, log, Entry} ->
			Pid ! {self(), logged},
			loop([Entry|Entries]);
		{Pid, fetch} ->
			Pid ! {self(), log_is, lists:reverse(Entries)}
	end,
	loop(Entries).   
