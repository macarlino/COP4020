-module (logger). 
-export ([start/0]). 

start() ->
	spawn(fun() -> loop/0 end).

loop() ->
	receive
		{Pid, log, Entry} ->
			Pid ! {self(), logged};
		{Pid, fetch} ->
			Pid ! {self(), log_is, Entries}
	end,
	loop().   
 
