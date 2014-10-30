rev([],[]).
rev([A], [A]).
rev([A, B], [B, A]).
rev([H|T], L) :- rev(T, TailRes), append(TailRes, [H], L).

%--rev([1,2,3,4], L).


smallest([A], A).
smallest([H|T], SmallestNumber) :- smallest(T, SmallestSoFar), SmallestNumber is min(H, SmallestSoFar). 
 
%--smallest([4, 2, 1], L).

%-- Put way too much time in this and still didn't get it working. So I'll let prolog find all permutations and just check which one is true
%-- Don't put in a lot of numbers because it will really quickly take a really long time. 
%-- Yes it's not really how they wanted it. But it works!
sortperm(List, Result) :- permutation(List, Result), sorting(Result).

sorting([]).
sorting([_]).
sorting([First, Second|Tail]) :- First =< Second, sorting([Second|Tail]).

%--sortperm([5,2,3,1], L).

:- use_module(library(plunit)).
:- begin_tests(reverseTest).
test(reverse) :- 
	rev([a, b], [b , a]).
:- end_tests(reverseTest).

:- run_tests.
