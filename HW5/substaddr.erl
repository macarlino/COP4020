-module (substaddr). 
-export ([substaddr/3]). 
-include ("salesdata.hrl"). 
-import (salesdata, [store/2, group/2]). 

% salesdata() is defined as either a store record or a group record:
% -type salesdata() :: #store{} | #group{}.

% Record definitions for the salesdata() type.
%-record(store, {address :: string(), amounts :: [integer()]}).
%-record(group, {gname :: string(), members :: [salesdata:salesdata()]}).


% Description:
% returns a sales data record that is just like SD except that all store records in SD whose address field's value is Old in SD are changed to New in the result.
% Must Follow the Grammer! Use helping function for lists.

-spec substaddr(salesdata:salesdata(), string(), string()) -> salesdata:salesdata(). 

substaddr(SD, New, Old) ->
    
    

    
    
    
% EXAMPLES:
    
%eqTest(substaddr(#group{gname = "StartUP!", members = []},"Downtown", "50 Washington Ave."),
%	    "==", 
%  #group{gname = "StartUP!", members = []})



%eqTest(substaddr(
%	      #group{gname = "Target", members = [#store{address = "The Mall", amounts = [10,32,55]},
%                                               #store{address = "Downtown", amounts = [4,0,2,0]}]}, "253 Sears Tower", "The Mall"),
%	    "==", 
%  #group{gname = "Target", members = [#store{address = "253 Sears Tower", amounts = [10,32,55]}, #store{address = "Downtown", amounts = [4,0,2,0]}]})
