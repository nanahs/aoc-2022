module Day01 exposing (calMostCalories, calcTop3Calories)

import Inputs.Day01 as Day01


getElfCalories : List Int
getElfCalories =
    Day01.elves
        |> String.split "\n\n"
        |> List.map
            (\cals ->
                cals
                    |> String.split "\n"
                    |> List.map String.toInt
                    |> List.filterMap identity
                    |> List.sum
            )


calMostCalories : Int
calMostCalories =
    getElfCalories
        |> List.maximum
        |> Maybe.withDefault 0


calcTop3Calories : Int
calcTop3Calories =
    getElfCalories
        |> List.sort
        |> List.reverse
        |> List.take 3
        |> List.sum
