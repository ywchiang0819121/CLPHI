%% Nr. 309040 Chiang, Yu-Wei / Nr. 311877 Liu, Yang  / Nr.307891 Liang, Yunyi
factorial(X,N) :-  
   (    X =:= 0 -> N=1;
        factorial(X-1, NN), N is X * NN
   ).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Test Results          %
%         ?- factorial(3,W).     %              
%         W = 6.                 %  
%         ?- factorial(7,W).     %              
%         W = 5040.              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%