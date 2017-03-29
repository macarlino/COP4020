-module (count_matching). 
-export ([count_matching/2]). 

-spec count_matching (fun((T) -> boolean()), list(T)) -> non_neg_integer(). 

count_matching(_, []) -> 0;
count_matching(Pred, Lst) ->
    count_matching(Pred, Lst, 0). 
    
%count_matching(Pred, [H|T], Counter) when Pred(H) -> 
%    count_matching(Pred, T, Counter+1);

count_matching(Pred, [H|T], Counter) ->
    case Pred(H) of
        true -> count_matching(Pred, T, Counter+1);
        false -> count_matching(Pred, T, Counter)
    end;
    
count_matching(_, [], Counter) ->
    Counter. 
