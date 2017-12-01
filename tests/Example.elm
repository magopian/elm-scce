module Example exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Array.Hamt as Array


suite : Test
suite =
    test "scce" <|
        \_ ->
            Expect.equal
                (Array.repeat 1 0)
                (Array.repeat 49 0)
