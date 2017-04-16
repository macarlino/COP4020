-module(electionserver). 
-import(server1, [rpc/2]).
-export([vote/2]). 

-spec start() -> pid(). 
-spec vote(ES::pid(), Candidate::atom()) -> ok. 
% -spec results(ES::pid()) -> [{atom(), non_neg_integer()}]. 

start() ->
	Map = maps:new().
	spawn(fun() -> loop() end). 

vote(ES, Candidate) -> rpc(electionserver, {vote, Candidate}).
results(ES) -> {list_is, Lst} = rpc(electionserver, getList), List.

init() -> [].

handle({vote, Candidate}, Lst) -> {ok,map.put(Candidate)}



%vote(Pid, name) ->
%	receive
%		{Pid, name} ->
%			Pid ! {self(), ok},
%			end;
%	end,
%	vote(Pid, name).	
			 

% results(Pid) ->
	
