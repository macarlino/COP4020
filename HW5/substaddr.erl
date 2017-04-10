-module (substaddr). 
-export ([substaddr/3]). 
-include ("salesdata.hrl"). 
-import (salesdata, [store/2, group/2]). 

-spec substaddr(salesdata:salesdata(), string(), string()) -> salesdata:salesdata(). 

substaddr(#store{address=Address, amounts=Amounts}, New, Old) ->
    if Address =:= Old -> #store{address=New, amounts=Amounts};
    	true -> #store{address=Address, amounts=Amounts}
    end; 
    
substaddr(#group{gname=Gname, members=Members}, New, Old) ->
    #group{gname = Gname, members = [substaddr(X, New, Old) || X <- Members]}.
