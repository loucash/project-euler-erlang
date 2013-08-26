-module(sum_squares).
-export([solution/1]).


sum_square(Max) ->
    SumOfSquares = lists:sum([X*X || X <- lists:seq(1, Max)]),
    Sum = lists:sum([X || X <- lists:seq(1, Max)]),
    SquareOfSums = Sum*Sum,
    SquareOfSums - SumOfSquares.


solution(Max) ->
    sum_square(Max).
