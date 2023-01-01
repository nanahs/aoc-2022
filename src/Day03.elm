module Day03 exposing (groupPriority, totalPriority)

import Inputs.Day03 as Day03
import Set exposing (Set)
import Tuple exposing (second)


totalPriority : Int
totalPriority =
    Day03.rucksacks
        |> String.split "\n"
        |> List.map sackPriority
        |> List.sum


groupPriority : Int
groupPriority =
    Day03.rucksacks
        |> String.split "\n"
        |> groupsOfThree
        |> List.map groupBadge
        |> List.map toPrio
        |> List.sum


groupBadge : ( String, String, String ) -> String
groupBadge ( first, second, third ) =
    let
        firstSet =
            toSet first

        secondSet =
            toSet second

        thirdSet =
            toSet third
    in
    firstSet
        |> Set.intersect secondSet
        |> Set.intersect thirdSet
        |> Set.toList
        |> List.head
        |> Maybe.withDefault ""


groupsOfThree : List a -> List ( a, a, a )
groupsOfThree list =
    groupHelper list []


groupHelper : List a -> List ( a, a, a ) -> List ( a, a, a )
groupHelper current acc =
    case current of
        [ x, xs, xxs ] ->
            List.append acc [ ( x, xs, xxs ) ]

        x :: xs :: xxs :: tail ->
            groupHelper tail (List.append acc [ ( x, xs, xxs ) ])

        _ ->
            []


sackPriority : String -> Int
sackPriority sack =
    let
        len =
            String.length sack // 2

        comp1 =
            toSet (String.left len sack)

        comp2 =
            toSet (String.right len sack)
    in
    Set.intersect comp1 comp2
        |> Set.toList
        |> List.head
        |> Maybe.map toPrio
        |> Maybe.withDefault 0


toSet : String -> Set String
toSet comp =
    comp
        |> String.split ""
        |> Set.fromList


toPrio : String -> Int
toPrio char =
    case char of
        "a" ->
            1

        "b" ->
            2

        "c" ->
            3

        "d" ->
            4

        "e" ->
            5

        "f" ->
            6

        "g" ->
            7

        "h" ->
            8

        "i" ->
            9

        "j" ->
            10

        "k" ->
            11

        "l" ->
            12

        "m" ->
            13

        "n" ->
            14

        "o" ->
            15

        "p" ->
            16

        "q" ->
            17

        "r" ->
            18

        "s" ->
            19

        "t" ->
            20

        "u" ->
            21

        "v" ->
            22

        "w" ->
            23

        "x" ->
            24

        "y" ->
            25

        "z" ->
            26

        "A" ->
            27

        "B" ->
            28

        "C" ->
            29

        "D" ->
            30

        "E" ->
            31

        "F" ->
            32

        "G" ->
            33

        "H" ->
            34

        "I" ->
            35

        "J" ->
            36

        "K" ->
            37

        "L" ->
            38

        "M" ->
            39

        "N" ->
            40

        "O" ->
            41

        "P" ->
            42

        "Q" ->
            43

        "R" ->
            44

        "S" ->
            45

        "T" ->
            46

        "U" ->
            47

        "V" ->
            48

        "W" ->
            49

        "X" ->
            50

        "Y" ->
            51

        "Z" ->
            52

        _ ->
            0
