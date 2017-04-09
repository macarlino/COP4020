-module (var). 
-export ([start/1]). 

% returns the Pid of a server
start(Value) ->
    spawn(fun() -> loop(Value) end). 

loop(Value) ->
    receive
        % makes the server continue with NewVal as its new value
        {assign, NewVal} ->
            loop(NewVal);
        % Value is the server's current value
        {Pid, fetch} ->
            Pid ! {value, Value}
    end,
    loop(Value). 
        
