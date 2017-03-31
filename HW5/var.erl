-module (var). 
-export ([start/1]). 

% B1 = var:start(1),
% B2 = var:start(2),
% [eqTest(vfetch(B1),"==",1)

%vfetch(Pid) ->
%    Pid!{self(), fetch},
%    receive
%	{value, Value} ->
%	    Value
%    after 3000 ->
%	    io:format("timeout waiting for {value, Value} message~n"),
%	    exit(wrong_message)
%    end.

%bassign(Pid, Value) ->
%    Pid!{assign, Value},
%    Value.




% returns the Pid of a server
start(Value) ->
    spawn(fun() -> loop(Value) end). 

loop(Value) ->
    receive
        % makes the server continue with NewVal as its new value
        {assign, NewVal} ->
            
        % Value is the server's current value
        {Pid, fetch} ->
            Pid ! {value, Value}
    end. 
        
