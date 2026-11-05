% Simple Prolog Example for Agents
% Use at https://swish.swi-prolog.org/


% Knowledge base for Marcellus
:- dynamic loves/2.

% define the state
loves(vincent, mia).
loves(marcellus, mia).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).

% utility is higher if you are not
jealous(X, Y) :-
    dif(X, Y),
    loves(X, Z),
    loves(Y, Z).

% actions changes the state
love(X, Y) :- 
    loves(X,Y).

breakup(X, Y) :-
    retract(loves(X, Y)).

% try:
% Current utility?
% jealous(marcellus, Y).
% 
% What is the issue?
% loves(marcellus, Y).
% 
% Try an action.
% breakup(marcellus, mia),
% jealous(marcellus, Y).
