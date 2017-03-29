-module (substaddr). 
-export ([substaddr/3]). 
-include ("salesdata.hrl"). 
-import (salesdata, [store/2, group/2]). 

-spec substaddr(salesdata:salesdata(), string(), string()) -> salesdata:salesdata(). 

substaddr(SD, New, Old) ->
    
