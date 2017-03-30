-module (power). 
-export ([start/0]). 

% compute_power(PS, N, M) ->                PS = start() from power.erl
%    PS ! {self(), power, N, M},            self() is Pid ??    Pid is sender's process id
%    receive {answer, Res} -> Res end.

start() ->
    receive
        {From, power, N, M} ->
            From ! {self(), math:pow(N,M)};
    end. 
