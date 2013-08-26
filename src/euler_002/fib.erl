-module(fib).
-export([solution/0]).

-define(MAX_FIB_NUMBER, 4000000).

fib(X, Y) ->
    fun() -> [X+Y, fib(Y, X+Y)] end.

sum_even_lower_then_4milions([X, Next], Acc) ->
    case X > ?MAX_FIB_NUMBER of
        true -> Acc;
        false -> 
            case X rem 2 =:= 0 of
                true -> sum_even_lower_then_4milions(Next(), Acc+X);
                false -> sum_even_lower_then_4milions(Next(), Acc)
            end
    end.


solution() ->
    FibGen = fib(0, 1),
    sum_even_lower_then_4milions(FibGen(), 0).
