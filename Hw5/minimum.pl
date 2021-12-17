%% Nr. 309040 Chiang, Yu-Wei / Nr. 311877 Liu, Yang  / Nr.307891 Liang, Yunyi
minimum(A, B, C):-
    (   A < B -> C=A;
        A >=B -> C=B
    ).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%          Test Results          %
%       ?- minimum(6,5,C).       %              
%       C = 5.                   %  
%       ?- minimum(4,5,C).       %              
%       C = 4.                   %  
%       ?- minimum(5,5,C).       %              
%       C = 5.                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  