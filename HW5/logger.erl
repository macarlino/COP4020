-module (logger). 
-export ([start/0]). 

start() ->
	spawn(fun() -> loop() end).

loop() ->
	receive
		{Pid, log, Entry} ->
			% um
		{Pid, fetch}
			% um
		{SPid, log_is, Entries}
			% um
	end,
	loop().   
 
