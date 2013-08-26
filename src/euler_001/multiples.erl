-module(multiples).
-export([solution/1]).

solution(Max) ->
    lists:sum([X || X <- lists:seq(1, Max-1), (X rem 3 =:= 0) or (X rem 5 =:= 0)]).
