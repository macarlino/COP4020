-module (logger). 
-export ([start/0]). 

start() ->
	spawn(fun() -> loop/0 end).

loop() ->
	receive
		{Pid, log, Entry} ->
			Pid ! {SPid, log_is, Entries ++ Entry};
		{Pid, fetch} ->
			Pid ! {SPid, log_is, Entries}
	end,
	loop().   
 
