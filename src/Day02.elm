module Day02 exposing (totalScorePart1, totalScorePart2)

import Inputs.Day02 as Day02


type Choice
    = Rock
    | Paper
    | Scissors


totalScorePart1 : Int
totalScorePart1 =
    Day02.strategy
        |> String.split "\n"
        |> List.map choiceFromStringPart1
        |> List.filterMap identity
        |> List.map matchToScore
        |> List.sum


totalScorePart2 : Int
totalScorePart2 =
    Day02.strategy
        |> String.split "\n"
        |> List.map choiceFromStringPart2
        |> List.filterMap identity
        |> List.map matchToScore
        |> List.sum


matchToScore : ( Choice, Choice ) -> Int
matchToScore match =
    case match of
        ( Rock, Rock ) ->
            1 + 3

        ( Rock, Paper ) ->
            2 + 6

        ( Rock, Scissors ) ->
            3 + 0

        ( Paper, Rock ) ->
            1 + 0

        ( Paper, Paper ) ->
            2 + 3

        ( Paper, Scissors ) ->
            3 + 6

        ( Scissors, Rock ) ->
            1 + 6

        ( Scissors, Paper ) ->
            2 + 0

        ( Scissors, Scissors ) ->
            3 + 3


choiceFromStringPart1 : String -> Maybe ( Choice, Choice )
choiceFromStringPart1 str =
    case str of
        "A X" ->
            Just ( Rock, Rock )

        "A Y" ->
            Just ( Rock, Paper )

        "A Z" ->
            Just ( Rock, Scissors )

        "B X" ->
            Just ( Paper, Rock )

        "B Y" ->
            Just ( Paper, Paper )

        "B Z" ->
            Just ( Paper, Scissors )

        "C X" ->
            Just ( Scissors, Rock )

        "C Y" ->
            Just ( Scissors, Paper )

        "C Z" ->
            Just ( Scissors, Scissors )

        _ ->
            Nothing


choiceFromStringPart2 : String -> Maybe ( Choice, Choice )
choiceFromStringPart2 str =
    case str of
        "A X" ->
            Just ( Rock, Scissors )

        "A Y" ->
            Just ( Rock, Rock )

        "A Z" ->
            Just ( Rock, Paper )

        "B X" ->
            Just ( Paper, Rock )

        "B Y" ->
            Just ( Paper, Paper )

        "B Z" ->
            Just ( Paper, Scissors )

        "C X" ->
            Just ( Scissors, Paper )

        "C Y" ->
            Just ( Scissors, Scissors )

        "C Z" ->
            Just ( Scissors, Rock )

        _ ->
            Nothing
