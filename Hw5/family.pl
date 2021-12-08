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
grandmother(X, Y) :- parent(X, Z), parent(Z, Y), female(X), X \== Y.
grandfather(X, Y) :- parent(X, Z), parent(Z, Y), male(X), X \== Y.
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
%     X = gustav.                                  %             
%     ?- ancestor(X, hunter).                      %                         
%     X = gustav .                                 %
%     ?- ancestor(X, hunter).                      %            
%     X = gustav ;                                 %
%     X = nancy ;                                  %            
%     X = joe ;                                    %        
%     X = june.                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%            