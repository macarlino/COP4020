-module (power). 
-export ([start/0]). 

start() ->
    spawn(fun server/0). 
    
server() ->
    receive
        {From, power, N, M} ->
            From ! {answer, math:pow(N,M)}
    end,
    server(). 
