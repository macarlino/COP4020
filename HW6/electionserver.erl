-module(electionserver). 
-export([vote/2]). 

-spec start() -> pid(). 
-spec vote(ES::pid(), Candidate::atom()) -> ok. 
-spec results(ES::pid()) -> [{atom(), non_neg_integer()}]. 

start() ->
	spawn(). 

vote(Pid, name) ->
	

results(Pid) ->
	