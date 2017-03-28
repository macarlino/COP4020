-module(concat). 
-export([concat/1]). 

-spec concat(Lists :: [[T]]) -> [T].

concat([]) -> [];
concat([Head|Tail]) ->
    Head ++ concat(Tail). 
    
    
