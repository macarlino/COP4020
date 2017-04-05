-module (substaddr). 
-export ([substaddr/3, helper/3]). 
-include ("salesdata.hrl"). 
-import (salesdata, [store/2, group/2]). 

-spec substaddr(salesdata:salesdata(), string(), string()) -> salesdata:salesdata(). 

% Need to go through the list and find a way to run substaddr to change address when needed
helper(Members, New, Old) ->
    [X || X <- Members]. 

substaddr(#store{address=Address, amounts=Amounts}, New, Old) ->
    if Address =:= Old ->
        #store{address=New, amounts=Amounts};
    true -> #store{address=Old, amounts=Amounts}
    end; 
    
substaddr(#group{gname=Gname, members=Members}, New, Old) ->
    if Members =:= [] ->
        #group{gname = Gname, members = []};
    true -> #group{gname = Gname, members = helper(Members, New, Old)}
    end. 
