%% Nr. 309040 Chiang, Yu-Wei / Nr. 311877 Liu, Yang  / Nr.307891 Liang, Yunyi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% F           M         M     %
% nancy ----- joe ----- hunter%
%         |   F     |         %
%         |   june -|         %
% M       |                   %
% gustav -|                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
female(nancy).
female(june).
male(joe).
male(hunter).
male(gustav).
parent(joe, hunter). 
parent(june, hunter). 
parent(nancy, joe).
parent(gustav, joe).
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).
grandmother(X, Y) :- mother(X, Z), parent(Z, Y), X \== Y.
grandfather(X, Y) :- father(X, Z), parent(Z, Y), X \== Y.
ancestor(X, Y) :- grandfather(X, Y); grandmother(X, Y); parent(X, Y).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               TEST RESULT                        %
%     ?- mother(june, hunter).                     %                         
%     true.                                        %     
%     ?- mother(nancy,joe).                        %                     
%     true.                                        %     
%     ?- father(gustav,joe).                       %                         
%     true.                                        %     
%     ?- father(joe, hunter).                      %                         
%     true.                                        %     
%     ?- grandmother(X, hunter).                   %                             
%     X = nancy .                                  %             
%     ?- grandfather(X, hunter).                   %                             
%     X = gustav .                                 %             
%     ?- ancestor(X, hunter).                      %                         
%     X = gustav .                                 %
%     ?- ancestor(X, hunter).                      %            
%     X = gustav ;                                 %
%     X = nancy ;                                  %            
%     X = joe ;                                    %        
%     X = june.                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%            
