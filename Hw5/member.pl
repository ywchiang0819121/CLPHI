%% Nr. 309040 Chiang, Yu-Wei / Nr. 311877 Liu, Yang  / Nr.307891 Liang, Yunyi
member(X,[X|_]).
member(X,[_|L]) :- member(X,L).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%         Test Results           %
%    ?- member(1,[1,2,3,4]).     %              
%    true .                      %  
%    ?- member(3,[1,2,3,4]).     %              
%    true .                      %  
%    ?- member(5,[1,2,3,4]).     %              
%    false.                      %  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
