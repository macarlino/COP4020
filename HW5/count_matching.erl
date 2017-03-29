-module (count_matching). 
-export ([count_matching/2]). 

-spec count_matching (fun((T) -> boolean()), list(T)) -> non_neg_integer(). 

count_matching(Pred, Lst) ->
    
