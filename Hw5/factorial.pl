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