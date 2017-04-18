-module(electionserver).
-export([start/0, vote/2, results/1, election/2]).

-spec start() -> pid().
-spec vote(ES::pid(), Candidate::atom()) -> ok.
-spec results(ES::pid()) -> [{atom(), non_neg_integer()}].

start() ->
	spawn(?MODULE, election, [[], [{}]]).

election(Candidates, Pairs) ->
	receive
		{Pid, get} ->
			Pid ! {Pairs};

		{Pid, Candidate} ->
			Pid ! {ok},
			case lists:member(Candidate, Candidates) of
				true ->
					election(Candidates, [{Name, Num+1} || {Name, Num} <- Pairs, Name =:= Candidate]);
				false -> 
					election(Candidates ++ [Candidate], Pairs ++ {Candidate, 1})
			end
	end.
	
vote(ES, Candidate) ->
	ES ! {Candidate},
	ES ! {ok}.

results(ES) ->
	ES ! {self(), get},
	receive
		{Pairs} ->
			[ES ! {X} || X <- Pairs]
	end.

